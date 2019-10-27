package usyd.elec5619.slimYB.web;

import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.TreeMap;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

/**
 * ImageController
 */
@Controller
public class ImageController {

    private static final Logger logger = LoggerFactory.getLogger(ImageController.class);

    /**
     * 实现文件上传
     * 
     * @throws IOException
     * @throws IllegalStateException
     */
    @RequestMapping(value = "fileUpload", method = RequestMethod.POST)
    @ResponseBody
    public Map fileUpload(HttpServletRequest req, @RequestParam("file")MultipartFile file) throws IllegalStateException, IOException {
        Map map = new TreeMap();
        if (file.getOriginalFilename() == null || file.getOriginalFilename().equals("")) {
            System.err.println("null+++");
            map.put("state", "error");
            return map;
        } else {
            String picName = UUID.randomUUID().toString();
            String oriName = file.getOriginalFilename();
            System.err.println(oriName + " name");
            String extName = oriName.substring(oriName.lastIndexOf("."));
            System.err.println("suffix " + extName);
            if (extName.equals(".jpg") || extName.equals(".JPG") || extName.equals(".png") || extName.equals(".PNG") || extName.equals(".jpeg")) {
                String path = req.getSession().getServletContext().getRealPath("/");
                System.out.println("path=" + path);

                file.transferTo(new File(path + "/static/img/" + picName + extName));
                System.err.println("complete");
                map.put("state", "ok");
                map.put("name", picName + extName);
                return map;
            } else {
                System.err.println("error");
                map.put("state", "error");
                return map;
            }
        }
    }    
}