/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lab1;

import com.itextpdf.io.font.FontConstants;
import com.itextpdf.io.font.PdfEncodings;
import com.itextpdf.io.image.ImageData;
import com.itextpdf.io.image.ImageDataFactory;
import com.itextpdf.kernel.events.Event;
import com.itextpdf.kernel.events.IEventHandler;
import com.itextpdf.kernel.events.PdfDocumentEvent;
import com.itextpdf.kernel.font.PdfFont;
import com.itextpdf.kernel.font.PdfFontFactory;
import com.itextpdf.kernel.geom.PageSize;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfPage;
import com.itextpdf.kernel.pdf.PdfWriter;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.kernel.pdf.xobject.PdfFormXObject;
import com.itextpdf.layout.Document;
import com.itextpdf.layout.element.AreaBreak;
import com.itextpdf.layout.element.Image;
import com.itextpdf.layout.element.Paragraph;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ignacio
 */
@WebServlet(name = "PDFNums", urlPatterns = {"/lab3/pdfnums"})
public class PDFNums extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected PdfFont bold;
    protected PdfFont italic;
    protected PdfFont normal;

    protected PdfFormXObject template;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        response.setHeader("Expires", "0");
        response.setHeader("Cache-Control", "must-revalidate, post-check=0, pre-check=0");
        response.setHeader("Pragma", "public");
        response.setContentType("application/pdf");
        response.addHeader("Content-Disposition", "inline; filename=test.pdf");

        OutputStream os = response.getOutputStream();
        PdfDocument pdfDoc = new PdfDocument(new PdfWriter(os));
        font = PdfFontFactory.createFont(getServletContext().getRealPath("../../web/resources/font/OpenSans-Regular.ttf"), PdfEncodings.IDENTITY_H);
        pdfDoc.addEventHandler(PdfDocumentEvent.END_PAGE, new HeaderHandler());
        Document doc = new Document(pdfDoc, new PageSize(PageSize.A4), true);
        doc.setMargins(54, 36, 36, 36);

        bold = PdfFontFactory.createFont(FontConstants.HELVETICA_BOLD);
        italic = PdfFontFactory.createFont(FontConstants.HELVETICA_OBLIQUE);
        normal = PdfFontFactory.createFont(FontConstants.HELVETICA);

        template = new PdfFormXObject(new Rectangle(550, 803, 30, 30));
        PdfCanvas canvas = new PdfCanvas(template, pdfDoc);

        HeaderHandler headerHandler = new HeaderHandler();
        pdfDoc.addEventHandler(PdfDocumentEvent.START_PAGE, headerHandler);

        // By default column width is calculated automatically for the best fit.
        // useAllAvailableWidth() method makes table use the whole page's width while placing the content.
        List<Integer> numeros = new ArrayList<>();
        for(String num : request.getParameter("nums").split(",")) {
            numeros.add(Integer.parseInt(num.trim()));
        }
        Collections.sort(numeros, Collections.reverseOrder());
        doc.add(new Paragraph(numeros.stream().map(s -> String.valueOf(s)).collect(Collectors.joining(", "))));
        
        canvas.beginText();
        try {
            canvas.setFontAndSize(PdfFontFactory.createFont(FontConstants.HELVETICA), 12);
        } catch (IOException e) {
            e.printStackTrace();
        }
        canvas.moveText(550, 803);
        canvas.showText(Integer.toString(pdfDoc.getNumberOfPages()));
        canvas.endText();
        canvas.release();

        doc.close();
    }

    /**
     *
     */

    protected PdfFont font;
    
    public class HeaderHandler implements IEventHandler {
        protected String fecha = String.format("Fecha: %1$tH:%1$tM:%1$tS %1$td-%1$tm-%1$tY", new Date());

        @Override
        public void handleEvent(Event event) {
            
            PdfDocumentEvent docEvent = (PdfDocumentEvent) event;
            PdfPage page = docEvent.getPage();
            int pageNum = docEvent.getDocument().getPageNumber(page);
            PdfCanvas canvas = new PdfCanvas(page);
            canvas.beginText();
            try {
                canvas.setFontAndSize(PdfFontFactory.createFont(FontConstants.HELVETICA), 12);
            } catch (IOException e) {
                e.printStackTrace();
            }
            canvas.moveText(34, 803);
            canvas.showText(fecha);
            canvas.moveText(450, 0);
            canvas.showText(String.format("Pagina %d de", pageNum));
            canvas.endText();
            canvas.stroke();
            canvas.addXObject(template, 0, 0);
            canvas.release();
        }

        public void setHeader(String fecha) {
            this.fecha = fecha;
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
