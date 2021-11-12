package com.youtube.daos.utils;

import com.youtube.daos.ICategoryDAO;
import com.youtube.daos.IUserDAO;
import com.youtube.daos.IVideoDAO;
import com.youtube.daos.impls.CategoryDAO;
import com.youtube.daos.impls.UserDAO;
import com.youtube.daos.impls.VideoDAO;
import com.youtube.entities.Category;
import com.youtube.entities.User;
import com.youtube.entities.Video;

import java.sql.Timestamp;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Collection;

public class InitData {

    private final IUserDAO userDAO;

    private final IVideoDAO videoDAO;

    private final ICategoryDAO categoryDAO;

    public InitData() {
        userDAO = new UserDAO();

        videoDAO = new VideoDAO();

        categoryDAO = new CategoryDAO();
    }

    public Collection<Category> initCategories() {
        Collection<Category> categories = new ArrayList<>();
        categories.add(new Category(
                "music",
                Timestamp.from(Instant.now()),
                Long.valueOf("0"),
                Timestamp.from(Instant.now()),
                Long.valueOf("0")
        ));
        categories.add(new Category(
                "sport",
                Timestamp.from(Instant.now()),
                Long.valueOf("0"),
                Timestamp.from(Instant.now()),
                Long.valueOf("0")
        ));
        categories.add(new Category(
                "news",
                Timestamp.from(Instant.now()),
                Long.valueOf("0"),
                Timestamp.from(Instant.now()),
                Long.valueOf("0")
        ));
        categories.add(new Category(
                "review",
                Timestamp.from(Instant.now()),
                Long.valueOf("0"),
                Timestamp.from(Instant.now()),
                Long.valueOf("0")
        ));
        categories.add(new Category(
                "film",
                Timestamp.from(Instant.now()),
                Long.valueOf("0"),
                Timestamp.from(Instant.now()),
                Long.valueOf("0")
        ));
        categories.add(new Category(
                "education",
                Timestamp.from(Instant.now()),
                Long.valueOf("0"),
                Timestamp.from(Instant.now()),
                Long.valueOf("0")
        ));
        categories.add(new Category(
                "technology",
                Timestamp.from(Instant.now()),
                Long.valueOf("0"),
                Timestamp.from(Instant.now()),
                Long.valueOf("0")
        ));
        categories.add(new Category(
                "life",
                Timestamp.from(Instant.now()),
                Long.valueOf("0"),
                Timestamp.from(Instant.now()),
                Long.valueOf("0")
        ));
        categories.add(new Category(
                "game",
                Timestamp.from(Instant.now()),
                Long.valueOf("0"),
                Timestamp.from(Instant.now()),
                Long.valueOf("0")
        ));
        categories.add(new Category(
                "livestream",
                Timestamp.from(Instant.now()),
                Long.valueOf("0"),
                Timestamp.from(Instant.now()),
                Long.valueOf("0")
        ));
        return categories;
    }

    public Collection<Video> initVideos() {
        Collection<Video> videos = new ArrayList<>();
        videos.add(new Video(
                "CÓ LẼ ANH CHƯA TỪNG - ONLY C ft. KARIK | OFFICIAL MUSIC VIDEO",
                "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/g_TGYUr0Lcs?autoplay=1\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",
                11417041,
                Timestamp.valueOf("2021-04-01 20:00:00.00"),
                "#CoLeAnhChuaTung #OnlyC #Karik",
                "CÓ LẼ ANH CHƯA TỪNG - ONLY C ft. KARIK |  OFFICIAL MUSIC VIDEO\n" +
                        "<br/> \n" +
                        "\uD83C\uDFB5 Nghe Audio tại:\n" +
                        "<br/> \n" +
                        "▶️ https://onlyc.streamlink.to/CoLeAnhCh...\n" +
                        "<br/> \n" +
                        "▶️ https://zingmp3.vn/bai-hat/Co-Le-Anh-...\n" +
                        "<br/> \n" +
                        "Music Director: OnlyC\n" +
                        "Composer: OnlyC\n" +
                        "Rap: Karik\n" +
                        "Lyrics: Lou Hoàng - OnlyC\n" +
                        "Music Producers: OnlyC – Justin TechN9\n" +
                        "Mixing: Dương StillaD\n" +
                        "Guitar: Danh Tú\n" +
                        "Master: Dzũng Ezee\n" +
                        "Recording: ZIKZAK\n" +
                        "Studio: OnlyC Production\n" +
                        "Project Director: Nguyễn Ngân Hà\n" +
                        "Executive Producer: Nguyễn Mai\n" +
                        "Starring: Kiều Minh Tuấn – Tú Hảo – bé Minh Anh\n" +
                        "PR and Social Manager: Nhật Duy Lê\n" +
                        "Artist Assistant: Ken DC\n" +
                        "Stylist: Hoàng Ku \n" +
                        "Stylist Assistant: My Trương – Duy Khánh – Gia Trân\n" +
                        "Support: Remizio – The Tuxedo – Choice – The Country Boutiques – The Twenty Three – The Maven – Chaiko House – Dottie Premium – L’allee\n" +
                        "Make up – Hair Artist : Mimi (Lâm Ngọc Minh) – Ngọc Lam -  Phan Uyển Khiết\n" +
                        "Make up Assistant : Chu Hồng Mỹ Linh\n" +
                        "Graphic Designer: Tuấn Maxx - Đinh Thiên Phú\n" +
                        "Behind the scenes: Táo – Lê Văn Phương - Nicki\n" +
                        "Photographer: Kiệt Võ - Táo\n" +
                        "Photographic Assistant: Bá Kiệt\n" +
                        "<br/> \n" +
                        "Production house: 7Arts\n" +
                        "Director: Phan Lên\n" +
                        "Creative Director: William \n" +
                        "Producer: Hiếu Nguyễn\n" +
                        "Director of Photography: Trang Công Minh \n" +
                        "Camera operator: Ngô Ngọc Thạch\n" +
                        "Focus Puller: Nghiem Duy Hai\n" +
                        "1st Ad: Phạm Nguyễn Bảo Hoàng\n" +
                        "Assitant Producer: Kim Ngân Trương - Võ Hữu Phước \n" +
                        "Art Director: Mee Hoàng\n" +
                        "Props team: Vũ Trần\n" +
                        "Camera: PS \n" +
                        "Lighting: Cine Light\n" +
                        "Catering: Huynh Nhuc Team\n" +
                        "Editor: Lê Hồng Thuỷ\n" +
                        "Colorist : Rei Arte \n" +
                        "VFX : Human House\n" +
                        "<br/> \n" +
                        "•••More information about OnlyC: \n" +
                        "Facebook: https://www.facebook.com/OnlyCproducer \n" +
                        "Instagram: https://instagram.com/onlycproducer \n" +
                        "••• More information about OnlyC Entertainment: \n" +
                        "Facebook: https://m.facebook.com/OnlyC.Entertai... \n" +
                        "Instagram: https://instagram.com/onlycent.official\n" +
                        "<br/> \n" +
                        "<br/> \n" +
                        "#CoLeAnhChuaTung #OnlyC #Karik \n" +
                        "► Subscribe để ủng hộ Only C nhé: https://goo.gl/5rtk22\n" +
                        "► Facebook: https://www.facebook.com/onlyC.pro\n" +
                        "<br/> \n" +
                        "Lyric:\n" +
                        "-----------------\n" +
                        "© Bản quyền thuộc về OnlyC Production\n" +
                        "© Copyright by OnlyC Production ☞ Do not Reup",
                0,
                0,
                "https://i.ytimg.com/vi/g_TGYUr0Lcs/hq720.jpg?sqp=-oaymwEcCOgCEMoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLB98aXrWMqqWDqQJjCfbESeiWFfWg",
                2,
                1,
                Timestamp.from(Instant.now()),
                Long.valueOf("0"),
                Timestamp.from(Instant.now()),
                Long.valueOf("0")
        ));
        videos.add(new Video(
                "YÊU ĐƠN PHƯƠNG ( AUDIO REMASTERED ) | ONLYC x KARIK",
                "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/d93HEYFWasQ?autoplay=1\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",
                35140,
                Timestamp.valueOf("2021-09-19 20:00:00.00"),
                "#onlyc #karik #yeudonphuong",
                "YÊU ĐƠN PHƯƠNG | ONLYC x KARIK | AUDIO REMASTERED\n" +
                        "<br/> \n" +
                        "#onlyc #karik #yeudonphuong\n" +
                        "<br/> \n" +
                        "*Lyric*\n" +
                        "Đã biết chắc sẽ như thế này\n" +
                        "Thức trắng suốt mấy đêm vì em\n" +
                        "1 lần nữa lại biết yêu...\n" +
                        "Sao không bên anh , sao lại như thế khi...\n" +
                        "Biết bao lâu đã vì em không quan tâm đến bất kỳ ai\n" +
                        "Trái tim này là thuộc về em có hay\n" +
                        "Sẽ không ai khiến anh lùi bước\n" +
                        "Chờ mong ai qua lối về , dù cho em...\n" +
                        "<br/> \n" +
                        "Dù cho đã biết , nếu đâm đầu yêu đơn phương sẽ không ai thấu mình đau\n" +
                        "đợi chờ 1 người như thói quen đã từ lâu\n" +
                        "Dù cho cố gắng đến mai sau cho dù cô dâu sánh đôi cũng bên ai\n" +
                        "Đành ngậm ngùi câu hát man mác yêu người đơn phương\n" +
                        "<br/> \n" +
                        "Kể từ ngày mình gặp hôm ấy , anh đã biết chắc có hôm nay\n" +
                        "1 ngày nỗi nhớ dâng đầy , xung quanh hình ảnh em bao vây \n" +
                        "Loay hoay mãi trong lòng 1 câu , “bây giờ phải làm sao đây ?” \n" +
                        "Khi tâm nói anh phải buông tay nhưng tim van nài anh đừng tháo chạy\n" +
                        "Anh...tự biết thân là kẻ đến sau\n" +
                        "Còn em như là con thuyền kể từ nay đã có bến đậu\n" +
                        "Nên chẳng mong , chẳng cầu , trời mang mình đến bên nhau\n" +
                        "Chỉ xin kỷ niệm ở lại , nỗi nhớ này đừng thêm sâu\n" +
                        "Vì yêu đơn phương là tự nguyện đau , là âm thầm nhớ\n" +
                        "Là chấp nhận cuối đầu trước duyên số , ngày đêm âm thầm chờ\n" +
                        "Xin cứ để nước mắt anh rơi cho trọn chân thành 1 người đứng sau\n" +
                        "Em không cần đáp trả tình cảm 1 gã si tình như là anh đâu\n" +
                        "(Hãy để nước mắt anh rơi cho trọn chân thành 1 người đến sau\n" +
                        "Dù đã biết có cố gắng mấy em mãi mãi chẳng thuộc về anh đâu)\n" +
                        "<br/> \n" +
                        "Em ơi cho tôi hay điều gì làm tan biến hết si mê\n" +
                        "Khi con tim đã khắc tên em bao ngày ,\n" +
                        "Ngay từ ấy đến mai sau này , luôn mãi như vậy\n" +
                        "Đành lòng vẫn yêu dù đơn phương\n" +
                        "<br/> \n" +
                        "Anh biết mình đã thật khờ dại khi luôn tận tâm với tình yêu này\n" +
                        "Trước hàng trăm lý do tổn thương bản thân nhưng chẳng thể nào buông tay\n" +
                        "Nhưng không sao , anh chấp nhận , có ra sao , vẫn chấp nhận\n" +
                        "Anh chấp nhận mãi đứng đây trông theo hạnh phúc em chọn lớn theo từng ngày\n" +
                        "Chấp nhận tình cảm mình lớn lên nhưng không bao giờ được gửi đến\n" +
                        "Chấp nhận mãi mãi bị lãng quên với ký ức chưa từng đặt tên \n" +
                        "Và anh chấp nhận tất cả dù sẽ chẳng còn được kề bên \n" +
                        "► Subscribe để ủng hộ Only C nhé: https://goo.gl/5rtk22\n" +
                        "► Facebook: https://www.facebook.com/onlyC.pro\n" +
                        "<br/> \n" +
                        "<br/> \n" +
                        "-----------------\n" +
                        "© Bản quyền thuộc về OnlyC Production\n" +
                        "© Copyright by OnlyC Production ☞ Do not Reup",
                0,
                0,
                "https://i.ytimg.com/vi/d93HEYFWasQ/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLAk6pBUGCANS9jgaberhkFfxWT7yg",
                2,
                1,
                Timestamp.from(Instant.now()),
                Long.valueOf("0"),
                Timestamp.from(Instant.now()),
                Long.valueOf("0")
        ));
        videos.add(new Video(
                "ĐAU ĐỂ TRƯỞNG THÀNH | ONLYC | LIVE VERSION",
                "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ReQqd2lNBjM?autoplay=1\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",
                119872,
                Timestamp.valueOf("2021-05-19 20:00:00.00"),
                "#daudetruongthanh #ddtt #onlyc",
                "ĐAU ĐỂ TRƯỞNG THÀNH | ONLYC | STAGE VERSION\n" +
                        "#daudetruongthanh #ddtt #onlyc\n" +
                        "Link Spotify : https://open.spotify.com/track/5iMdP8...\n" +
                        "Link MP3 : https://zingmp3.vn/bai-hat/Dau-De-Tru...\n" +
                        "-----------------\n" +
                        "ĐẠO DIỄN : PHƯỚC ĐẶNG\n" +
                        "MUSIC COMPOSER : ONLYC\n" +
                        "GUITAR : DANH TÚ\n" +
                        "KEYBOARD : JUSTIN TECHN9\n" +
                        "ELECTRIC GUITAR : KAN\n" +
                        "DRUM : TRẦN HẬU\n" +
                        "GUITAR BASS : HUYBOTHAI\n" +
                        "-----------------\n" +
                        "Lyric :\n" +
                        "Yêu, ai mà chẳng có lúc buồn\n" +
                        "Thương, ai rồi cũng đến lúc buông\n" +
                        "Ừ thì a phải đứng dậy thôi, nhật kí cất đi rồi\n" +
                        "Thôi nói ra làm gì lại càng thêm đau\n" +
                        "Nếu quay thời gian đến lúc đầu\n" +
                        "Để nói rằng: này chàng trai hãy nhớ cho\n" +
                        "Người con gái cô đơn lắm đấy, tại sao ko níu lấy?\n" +
                        "Để mất đi 1 người chỉ vì vô tâm\n" +
                        "<br/> \n" +
                        "Có những điều mà a muốn nói\n" +
                        "Không kịp đâu đã quá muộn rồi\n" +
                        "Có những điều mà a từng ngó lơ lại là ước mơ bao người\n" +
                        "Là tại anh, nỗi đau đi đến suốt đời\n" +
                        "Khi yêu chỉ cần như thế\n" +
                        "Chia tay có khi làm mình lớn lên\n" +
                        "Mỗi khi buồn thì em cứ khóc\n" +
                        "Khóc thật to mỗi a nghe thôi\n" +
                        "Mỗi khi đau niềm đau cũng xé đôi, vì a vẫn yêu e nhiều\n" +
                        "Dòng thời gian sẽ trôi để a thấy rằng\n" +
                        "Chia tay thì ta mới thấu mình đã sai từ đâu...\n" +
                        "<br/> \n" +
                        "<br/> \n" +
                        "► Subscribe để ủng hộ Only C nhé: https://goo.gl/5rtk22\n" +
                        "► Fanpage: https://www.facebook.com/OnlyCproducer\n" +
                        "<br/> \n" +
                        "<br/> \n" +
                        "-----------------\n" +
                        "© Bản quyền thuộc về OnlyC Production\n" +
                        "© Copyright by OnlyC Production ☞ Do not Reup",
                0,
                0,
                "https://i.ytimg.com/vi/ReQqd2lNBjM/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCcYQVzQYrcxHwM5yyVGCyrWQqnIQ",
                2,
                1,
                Timestamp.from(Instant.now()),
                Long.valueOf("0"),
                Timestamp.from(Instant.now()),
                Long.valueOf("0")
        ));
        videos.add(new Video(
                "YÊU EM DẠI KHỜ | LOU HOÀNG | OFFICIAL MV",
                "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/KyXKGurjX_4?autoplay=1\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",
                48826681,
                Timestamp.valueOf("2018-12-21 20:00:00.00"),
                "",
                "YÊU EM DẠI KHỜ\n" +
                        "Produced by OnlyC\n" +
                        "-----------------  \n" +
                        "Arrangement : JustinTech9\n" +
                        "https://fb.me/justin.techn9\n" +
                        "Composed by Nguyen Jenda\n" +
                        "https://fb.me/cao.trungnguyen.948\n" +
                        "Guitar : Kan\n" +
                        "https://fb.me/KanThanTrong\n" +
                        "Mixing Master : Bo Tho Heo \n" +
                        " https://fb.me/botho.heo\n" +
                        "Excutive Producer Vinny Vu\n" +
                        "https://fb.me/vinnyvux\n" +
                        "Project Supervisor Nguyen Ngan Ha \n" +
                        "https://fb.me/ha.heo2\n" +
                        "Stylist : Thiên Thanh \n" +
                        "Make up : Mimi \n" +
                        "Assistant : Ken DC, Thai Duong ,Vu Map , Nhật Hòa, Thành Đạt \n" +
                        "Trang phục TRENDIANO - AEIE STUDIO\n" +
                        "<br/> \n" +
                        "-----------------\n" +
                        "*Lyrics by Lou Hoang \n" +
                        "<br/> \n" +
                        "Thức trắng đêm nay có lẽ do anh đang say \n" +
                        "Biết nói cho ai nghe đây bởi vì không còn được bên em mỗi ngày \n" +
                        "Mình từng hứa sẽ vượt qua \n" +
                        "Vậy mà kết thúc rời xa \n" +
                        "Cớ sao anh cứ mong chờ vì anh đã yêu dại khờ \n" +
                        "Từng cùng nhau đi qua giông bão nhưng ko còn thấy nhau khi mưa tan\n" +
                        "Tại vì sao tình yêu luôn khiến cho mình mãi tin vào một giấc mơ\n" +
                        "Ngày em quay lưng bước đi mưa rơi ướt nhòe lên trên khóe mi \n" +
                        "Vì khi yêu chẳng cần lý trí mặc kệ con tim làm điều vô lí. \n" +
                        "<br/> \n" +
                        "Đừng trao nhau ân ái nhạt màu đừng để trái tim cứ mãi u sầu \n" +
                        "Có đôi khi mệt quá và muốn rời xa \n" +
                        "Hãy nhớ lí do vì sao hai ta bắt đầu \n" +
                        "Lời chia tay không nói thành lời\n" +
                        "Và em cũng đau khi ta xa rời \n" +
                        "Phải ko người ơi, lệ rơi tim anh chơi vơi \n" +
                        "<br/> \n" +
                        "Vì a đã yêu e dại khờ ờ dù bơ vơ \n" +
                        "Tình yêu ấy mãi ko phai mờ a luôn tôn thờ ơ \n" +
                        "Chẳng thể xóa đi những vui cười ngày nào bên em \n" +
                        "Càng không muốn tương lai yêu người nao khác em \n" +
                        "Vì a đã yêu e dại khờ\n" +
                        "Thời gian qua nhiều phong ba làm cho ta tự gây ra điều buồn bã lại cãi vã rồi chia xa \n" +
                        "Pick up the phone vô tình giọng e vang lên \n" +
                        "Vậy nếu không nói gì thêm thôi từ nay nên quên tên \n" +
                        "Stop it thôi đừng nói nhiều thêm giờ quên được chưa \n" +
                        "Bây giờ đã quá trễ để có thể quay lại yêu lần nữa \n" +
                        "Tạm biệt tất cả những lời hứa dối trá \n" +
                        "Những gì đã trôi qua \n" +
                        "Tấm hình cũ đôi ta \n" +
                        "Xóa sạch hết phôi pha\n" +
                        "<br/> \n" +
                        "► Subscribe để ủng hộ Only C nhé: https://goo.gl/5rtk22\n" +
                        "► Facebook: https://www.facebook.com/onlyC.pro\n" +
                        "<br/> \n" +
                        "<br/> \n" +
                        "-----------------\n" +
                        "© Bản quyền thuộc về OnlyC Production\n" +
                        "© Copyright by OnlyC Production ☞ Do not Reup",
                0,
                0,
                "https://i.ytimg.com/vi/KyXKGurjX_4/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCeUI48Y0NyPB-AkZcrpyHujq9fvg",
                2,
                1,
                Timestamp.from(Instant.now()),
                Long.valueOf("0"),
                Timestamp.from(Instant.now()),
                Long.valueOf("0")
        ));
        videos.add(new Video(
                "QUAN TRỌNG LÀ THẦN THÁI | ONLYC ft KARIK | OFFICIAL VIDEO LYRIC",
                "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/JqWuzvSMs08?autoplay=1\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",
                50448415,
                Timestamp.valueOf("2018-03-15 20:00:00.00"),
                "",
                "Quan Trọng Là Thần Thái | OnlyC ft Karik | Official Video Lyric\n" +
                        "Compose : Only C, Karik\n" +
                        "Graphic Design : Bảo Bảo\n" +
                        "Video Editor : RIN\n" +
                        "<br/> \n" +
                        "*Lyric*\n" +
                        "Quan trọng phải là thần thái\n" +
                        "Quan trọng khi là con gái , \n" +
                        "Bao giờ yêu thì luôn đúng , chẳng bao giờ thấy sai\n" +
                        "Quan trọng vẫn là thần thái\n" +
                        "Khi mình yêu là con trai , \n" +
                        "Dẫu người ta gọi mình ái , cũng chẳng có gì để sai.\n" +
                        "<br/> \n" +
                        "Tốt hơn là mình thấy thần thái nằm đâu\n" +
                        "Tốt hơn là mình thấy thần thái đậm sâu\n" +
                        "Tốt hơn là mình thấy thần thái nằm đâu ,thấy thần thái nằm đâu ,thấy thần thái như nào\n" +
                        "<br/> \n" +
                        "Quan trọng ! vẫn là cái thần thái\n" +
                        "Quan trọng ! vẫn là cái thần thái\n" +
                        "Ai khen chê cứ mặc kệ , mình cứ ngầu có gì phải ngần ngại\n" +
                        "Vì mình đẹp chỗ nào tự mình biết , mình xấu chỗ nào cũng mình biết \n" +
                        "Cái gì của mình tự mình quyết để tâm làm gì mấy lời không cần thiết\n" +
                        "Bởi cơ bản xã hội vốn thị phi , bất kể là chuyện lớn hay là việc li ti\n" +
                        "Mình làm gì đi nữa thì họ vẫn dị nghị , thế nên kệ đi hơi đâu mà suy nghĩ\n" +
                        "Quan trọng nhất không phải vẻ bề ngoài\n" +
                        "Xấu , đẹp , chân ngắn hay chân dài\n" +
                        "Mình đang chơi hay là đứng gần ai\n" +
                        "Mà quan trọng là...\n" +
                        "<br/> \n" +
                        "Biển người biển khẩu lung tung , đúng hay sai miệng đời vẫn dậy sóng\n" +
                        "Tốt nhất bản thân cứ ung dung , để ra đường não bộ còn bay bổng\n" +
                        "Nếu cong không thẳng thì đã sao ?\n" +
                        "Lỡ thua không thắng thì đã sao ?\n" +
                        "Đen đúa không trắng thì đã sao ?\n" +
                        "Mình vẫn sống và đầu cứ ngẩng cao...\n" +
                        "Dù lên voi , hay xuống chó , nhà mình giàu hay không bằng chúng nó\n" +
                        "Bước ra đường , vẫn phải tỉnh , dù cho có bao nhiều thằng đứng ngó\n" +
                        "Vì quan trọng không phải vẻ bề ngoài\n" +
                        "Xấu , đẹp , chân ngắn hay chân dài\n" +
                        "Mình đang chơi hay là đứng gần ai\n" +
                        "Mà quan trọng là là là...\n" +
                        "<br/> \n" +
                        "Chơi lên chơi lên .... Ai ko chơi anh em tui chơi\n" +
                        "....\n" +
                        " Quan trọng phải là thần thái ,quan trọng phải là thần thái ,quan trọng vẫn là thần thái....\n" +
                        "<br/> \n" +
                        "► Subscribe để ủng hộ Only C nhé: https://goo.gl/5rtk22\n" +
                        "► Facebook: https://www.facebook.com/onlyC.pro\n" +
                        "-----------------\n" +
                        "© Bản quyền thuộc về OnlyC Production\n" +
                        "© Copyright by OnlyC Production \n" +
                        "☞ Do not Reup",
                0,
                0,
                "https://i.ytimg.com/vi/JqWuzvSMs08/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLAXzDvm92MnFXI5jn8yHO98sWgC4Q",
                2,
                1,
                Timestamp.from(Instant.now()),
                Long.valueOf("0"),
                Timestamp.from(Instant.now()),
                Long.valueOf("0")
        ));
        videos.add(new Video(
                "Ôm em lần cuối - Nit ft. Sing × 1 9 6 7 (\uD835\uDE68\uD835\uDE61\uD835\uDE64\uD835\uDE6C\uD835\uDE5A\uD835\uDE59 + \uD835\uDE67\uD835\uDE5A\uD835\uDE6B\uD835\uDE5A\uD835\uDE67\uD835\uDE57) /Toxic dope/",
                "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/mi4_kT20JqY?autoplay=1\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",
                10651,
                Timestamp.valueOf("2021-04-01 20:00:00.00"),
                "#omemlancuoi #Nit #toxicdope",
                "Ôm em lần cuối - Nit ft. Sing × 1 9 6 7 (\uD835\uDE68\uD835\uDE61\uD835\uDE64\uD835\uDE6C\uD835\uDE5A\uD835\uDE59 + \uD835\uDE67\uD835\uDE5A\uD835\uDE6B\uD835\uDE5A\uD835\uDE67\uD835\uDE57) /Toxic dope/\n" +
                        "<br/> \n" +
                        "<br/> \n" +
                        "©MV gốc:https://youtu.be/g337dA9zX3A\n" +
                        "©Lofi 1967:https://youtu.be/C9JfJZjzaFw\n" +
                        "<br/> \n" +
                        "——————————\n" +
                        "<br/> \n" +
                        "•Video này chỉ dùng để tận hưởng âm nhạc và giải trí, không mang mục đích thu lợi cá nhân.\n" +
                        "•Hình ảnh, âm thanh trong video đều ghi công cho nghệ sĩ/chủ sở hữu ban đầu.\n" +
                        "•Nếu có bất cứ thông tin quy phạm bản quyền thì mình sẽ xin phép gỡ bỏ ngay.\n" +
                        "<br/> \n" +
                        "•Chúc các bn có những giây phút thư giãn^^\n" +
                        "•Page:https://www.facebook.com/toxicdope911/\n" +
                        "<br/> \n" +
                        "——————————\n" +
                        "<br/> \n" +
                        "•Lyrics:\n" +
                        "<br/> \n" +
                        "Chơ vơ cô đơn bảo ngày rồi đấy\n" +
                        "Sao anh chẳng thể quên đi được em …\n" +
                        "Anh ôm kí ức đôi ta đã từng có\n" +
                        "Lặng thầm mình anh cùng bao nỗi đau\n" +
                        "<br/> \n" +
                        "Chẳng nghĩ có lúc anh phải xa em thật rồi\n" +
                        "Bao đêm anh vẫn suy tư về em\n" +
                        "Dặn lòng mình phải quên em ,đừng bật khóc…\n" +
                        "Một lần này thôi mong em về đây\n" +
                        "<br/> \n" +
                        "<br/> \n" +
                        "Người nói sẽ yêu anh mãi đậm sâu\n" +
                        "Người nói sẽ bên anh mãi thật lâu\n" +
                        "Mà cớ vì sao em quay đầu , đi về nơi xa xôi quáaa\n" +
                        "<br/> \n" +
                        "Tình đã nhạt phai theo gió và mây\n" +
                        "Giờ chỉ còn bao nỗi nhớ ở đây\n" +
                        "Muốn ôm em thêm một lần cuối thôi….\n" +
                        "<br/> \n" +
                        "end..\n" +
                        "------------------------\n" +
                        "© Bản Quyền Thuộc Về 1 9 6 7 ⌦ Vui Lòng Không Reup Dưới Mọi Hình Thức!!!\n" +
                        "© Mọi thông tin bản quyền hay khiếu nại liên hệ: Contact@1967ent.com\n" +
                        "<br/> \n" +
                        "#omemlancuoi #Nit #toxicdope",
                0,
                0,
                "https://i.ytimg.com/vi/mi4_kT20JqY/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCukHxCkkjJs8vEH-c-Sx8LsF5ZMg",
                3,
                1,
                Timestamp.from(Instant.now()),
                Long.valueOf("0"),
                Timestamp.from(Instant.now()),
                Long.valueOf("0")
        ));
        videos.add(new Video(
                "/Đi theo ánh nắng chiều tàn,phía cuối dòng người../Ánh chiều tàn - D Empty × Poll | slowed",
                "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/eZNO0RRwebA?autoplay=1\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",
                181683,
                Timestamp.valueOf("2021-07-16 20:00:00.00"),
                "",
                "•Video này chỉ dùng để tận hưởng âm nhạc và giải trí, không mang mục đích thu lợi cá nhân.\n" +
                        "•Hình ảnh, âm thanh trong video đều ghi công cho nghệ sĩ/chủ sở hữu ban đầu.\n" +
                        "•Nếu có bất cứ thông tin quy phạm bản quyền thì mình sẽ xin phép gỡ bỏ ngay.\n" +
                        "<br/> \n" +
                        "•Chúc các bn có những giây phút thư giãn^^\n" +
                        "•Page:https://www.facebook.com/toxicdope911/\n" +
                        "<br/> \n" +
                        "------------------------\n" +
                        "©MV gốc: https://youtu.be/AOYdD-3ole0\n" +
                        "©Mọi khiếu nại về bản quyền xin liên hệ: Toxicdope.911@gmail.com",
                0,
                0,
                "https://i.ytimg.com/vi/eZNO0RRwebA/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLByADGn9k66G8bPBCDtS3BeluBT9A",
                3,
                1,
                Timestamp.from(Instant.now()),
                Long.valueOf("0"),
                Timestamp.from(Instant.now()),
                Long.valueOf("0")
        ));
        videos.add(new Video(
                "/Và nếu thời gian quay về đây,liệu trái tim kia../Trong trí nhớ của anh - Erik cover | slowed",
                "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/rjF850oB3cg?autoplay=1\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",
                1367871,
                Timestamp.valueOf("2021-04-01 20:00:00.00"),
                "",
                "•Video này chỉ dùng để tận hưởng âm nhạc và giải trí, không mang mục đích thu lợi cá nhân.\n" +
                        "•Hình ảnh, âm thanh trong video đều ghi công cho nghệ sĩ/chủ sở hữu ban đầu.\n" +
                        "•Nếu có bất cứ thông tin quy phạm bản quyền thì mình sẽ xin phép gỡ bỏ ngay.\n" +
                        "<br/> \n" +
                        "<br/> \n" +
                        "•Chúc các bn có những giây phút thư giãn^^\n" +
                        "•Page:https://www.facebook.com/toxicdope911/\n" +
                        "<br/> \n" +
                        "------------------------\n" +
                        "©MV gốc: https://youtu.be/0Jh2-uDQdoY \n" +
                        "©Mọi khiếu nại về bản quyền xin liên hệ: Toxicdope.911@gmail.com",
                0,
                0,
                "https://i.ytimg.com/vi/rjF850oB3cg/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLAby3_YGcyLKnzp1kiKkXUAYxAubQ",
                3,
                1,
                Timestamp.from(Instant.now()),
                Long.valueOf("0"),
                Timestamp.from(Instant.now()),
                Long.valueOf("0")
        ));
        videos.add(new Video(
                "/Và rồi anh cũng sẽ phải nhận ra,em đã đi xa từ hôm qua../ slowed",
                "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/MAyItwTL3rg?autoplay=1\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",
                104062,
                Timestamp.valueOf("2021-04-01 20:00:00.00"),
                "",
                "•Video này chỉ dùng để tận hưởng âm nhạc và giải trí, không mang mục đích thu lợi cá nhân.\n" +
                        "•Hình ảnh, âm thanh trong video đều ghi công cho nghệ sĩ/chủ sở hữu ban đầu.\n" +
                        "•Nếu có bất cứ thông tin quy phạm bản quyền thì mình sẽ xin phép gỡ bỏ ngay.\n" +
                        "<br/> \n" +
                        "•Chúc các bn có những giây phút thư giãn^^\n" +
                        "•Page:https://www.facebook.com/toxicdope911/\n" +
                        "<br/> \n" +
                        "------------------------\n" +
                        "©MV gốc: https://youtu.be/FWYrRSWabIs\n" +
                        "©Mọi khiếu nại về bản quyền xin liên hệ: Toxicdope.911@gmail.com",
                0,
                0,
                "https://i.ytimg.com/vi/MAyItwTL3rg/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCqOSopXD0djezhzS6ONzvzVC19vA",
                3,
                1,
                Timestamp.from(Instant.now()),
                Long.valueOf("0"),
                Timestamp.from(Instant.now()),
                Long.valueOf("0")
        ));
        videos.add(new Video(
                "/Gió ngân nga âu yếm bay phiêu bồng../Nắm đôi bàn tay - Kay Trần | slowed",
                "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/EYLKu9ICSIs?autoplay=1\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",
                9567,
                Timestamp.valueOf("2021-04-01 20:00:00.00"),
                "",
                "•Video này chỉ dùng để tận hưởng âm nhạc và giải trí, không mang mục đích thu lợi cá nhân.\n" +
                        "•Hình ảnh, âm thanh trong video đều ghi công cho nghệ sĩ/chủ sở hữu ban đầu.\n" +
                        "•Nếu có bất cứ thông tin quy phạm bản quyền thì mình sẽ xin phép gỡ bỏ ngay.\n" +
                        "<br/> \n" +
                        "•Chúc các bn có những giây phút thư giãn^^\n" +
                        "•Page:https://www.facebook.com/toxicdope911\n" +
                        "<br/> \n" +
                        "------------------------\n" +
                        "©MV gốc: https://youtu.be/7nB1q65RP8w\n" +
                        "©Mọi khiếu nại về bản quyền xin liên hệ: Toxicdope.911@gmail.com",
                0,
                0,
                "https://i.ytimg.com/vi/EYLKu9ICSIs/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLAo8dEnX0mvNWLpcSowc6dICCM8fg",
                3,
                1,
                Timestamp.from(Instant.now()),
                Long.valueOf("0"),
                Timestamp.from(Instant.now()),
                Long.valueOf("0")
        ));
        videos.add(new Video(
                "Trực tiếp | ĐT VIỆT NAM TẬP LUYỆN CHIỀU 3/11, CÔNG PHƯỢNG LẠI THAY ĐỔI KIỂU TÓC !",
                "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/mRVBd5pOdxE?autoplay=1\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",
                14343,
                Timestamp.valueOf("2021-11-03 20:00:00.00"),
                "#NextSports #DTVN #VongloaiWorldCup",
                "Trực tiếp | ĐT VIỆT NAM TẬP LUYỆN CHIỀU 3/11, CÔNG PHƯỢNG LẠI THAY ĐỔI KIỂU TÓC !\n" +
                        "<br/> \n" +
                        "Chiều 3/11, ĐT Việt Nam sẽ tiếp tục tập luyện để chuẩn bị cho 2 trận đấu diễn ra trong tháng 11 thuộc vòng loại thứ ba World Cup 2022. Mời quý vị và các bạn chú ý đón xem!\n" +
                        "<br/> \n" +
                        "#NextSports #DTVN #VongloaiWorldCup\n" +
                        "<br/> \n" +
                        "► Kênh Youtube chính thức, đăng ký ngay: https://bit.ly/Nextsports\n" +
                        "<br/> \n" +
                        "Next Sports - đồng hành cùng thể thao Việt Nam trên mọi chặng đường!",
                0,
                0,
                "https://i.ytimg.com/vi/mRVBd5pOdxE/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCo09h6fQFSePHLdnzZWL1rwmZL8w",
                4,
                2,
                Timestamp.from(Instant.now()),
                Long.valueOf("0"),
                Timestamp.from(Instant.now()),
                Long.valueOf("0")
        ));
        videos.add(new Video(
                "HÀNH TRÌNH LỊCH SỬ U23 VIỆT NAM VCK U23 CHÂU Á I NHỮNG SIÊU PHẨM PHÚT CUỐI VÀ LOẠT PENALTY ĐỊNH MỆNH",
                "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Z4K78CKKmxo?autoplay=1\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",
                6867,
                Timestamp.valueOf("2021-04-01 20:00:00.00"),
                "",
                "NEXT SPORTS | HÀNH TRÌNH LỊCH SỬ U23 VIỆT NAM VCK U23 CHÂU Á I NHỮNG SIÊU PHẨM PHÚT CUỐI VÀ LOẠT PENALTY ĐỊNH MỆNH\n" +
                        "<br/> \n" +
                        "► Kênh Youtube chính thức, đăng ký ngay: https://bit.ly/Nextsports\n" +
                        "<br/> \n" +
                        "Next Sports - đồng hành cùng thể thao Việt Nam trên mọi chặng đường!",
                0,
                0,
                "https://i.ytimg.com/vi/Z4K78CKKmxo/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDvo4UXEXjh-TX-a68U7RG-3uTHfQ",
                4,
                2,
                Timestamp.from(Instant.now()),
                Long.valueOf("0"),
                Timestamp.from(Instant.now()),
                Long.valueOf("0")
        ));
        videos.add(new Video(
                "PARK HANG SEO - VỊ THUYỀN TRƯỞNG VĨ ĐẠI CỦA BĐVN, ĐỪNG VÌ VÀI TRẬN THUA MÀ ĐÃ VỘI QUAY LƯNG, CÚI ĐẦU",
                "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/D3_U-iBiR28?autoplay=1\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",
                3153,
                Timestamp.valueOf("2021-04-01 20:00:00.00"),
                "",
                "NEXT SPORTS | PARK HANG SEO - VỊ THUYỀN TRƯỞNG VĨ ĐẠI CỦA BĐVN, ĐỪNG VÌ VÀI TRẬN THUA MÀ ĐÃ VỘI QUAY LƯNG, CÚI ĐẦU\n" +
                        "<br/> \n" +
                        "► Kênh Youtube chính thức, đăng ký ngay: https://bit.ly/Nextsports\n" +
                        "<br/> \n" +
                        "Next Sports - đồng hành cùng thể thao Việt Nam trên mọi chặng đường!",
                0,
                0,
                "https://i.ytimg.com/vi/D3_U-iBiR28/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLC7R3cYoXoQ5doPV-fWXXmjOp9u3w",
                4,
                2,
                Timestamp.from(Instant.now()),
                Long.valueOf("0"),
                Timestamp.from(Instant.now()),
                Long.valueOf("0")
        ));
        videos.add(new Video(
                "CẬN CẢNH BUỔI TẬP CHIỀU 29/10 ĐT VIỆT NAM I MINH VƯƠNG TẬP RIÊNG, CÔNG PHƯỢNG TẮM MƯA SẮP CÓ TÓC MỚI",
                "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/4mMVpgMgMF8?autoplay=1\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",
                7351,
                Timestamp.valueOf("2021-04-01 20:00:00.00"),
                "",
                "NEXT SPORTS | CẬN CẢNH BUỔI TẬP NGÀY 29/10 CỦA ĐT VIỆT NAM | \n" +
                        "CẬN CẢNH BUỔI TẬP CHIỀU 29/10 ĐTVN I MINH VƯƠNG TẬP RIÊNG, CÔNG PHƯỢNG TẮM MƯA SẮP CÓ TÓC MỚI\n" +
                        "► Kênh Youtube chính thức, đăng ký ngay: https://bit.ly/Nextsports\n" +
                        "<br/> \n" +
                        "Next Sports - đồng hành cùng thể thao Việt Nam trên mọi chặng đường!",
                0,
                0,
                "https://i.ytimg.com/vi/4mMVpgMgMF8/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLA346WfvKWEoT6rspnF_FxjqslcaA",
                4,
                2,
                Timestamp.from(Instant.now()),
                Long.valueOf("0"),
                Timestamp.from(Instant.now()),
                Long.valueOf("0")
        ));
        videos.add(new Video(
                "HÀNH TRÌNH LỊCH SỬ U23 VIỆT NAM VCK U23 CHÂU Á I NHỮNG SIÊU PHẨM PHÚT CUỐI VÀ LOẠT PENALTY ĐỊNH MỆNH",
                "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Z4K78CKKmxo?autoplay=1\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",
                6868,
                Timestamp.valueOf("2021-04-22 20:00:00.00"),
                "",
                "NEXT SPORTS | HÀNH TRÌNH LỊCH SỬ U23 VIỆT NAM VCK U23 CHÂU Á I NHỮNG SIÊU PHẨM PHÚT CUỐI VÀ LOẠT PENALTY ĐỊNH MỆNH\n" +
                        "<br/> \n" +
                        "► Kênh Youtube chính thức, đăng ký ngay: https://bit.ly/Nextsports\n" +
                        "<br/> \n" +
                        "Next Sports - đồng hành cùng thể thao Việt Nam trên mọi chặng đường!",
                0,
                0,
                "https://i.ytimg.com/vi/7aQhYNsReQM/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLA_AruH1DWj1E9BmmCK-ky8VjtFeg",
                4,
                2,
                Timestamp.from(Instant.now()),
                Long.valueOf("0"),
                Timestamp.from(Instant.now()),
                Long.valueOf("0")
        ));
        videos.add(new Video(
                "Fight Week: UFC 268 Preview Show with Michael Bisping | Usman v Covington 2, Namajunas v Zhang",
                "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/20fBE1SM8Qs?autoplay=1\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>",
                88779,
                Timestamp.valueOf("2021-04-01 20:00:00.00"),
                "#UFC268",
                "Michael Bisping, Adam Catterall and Nick Peet break down the second massive UFC card in the same number of weeks. They look ahead to UFC 268 and the rematch between Kamaru Usman and Colby Covington, and Rose Namajunas and Zhang Weili as well as the exciting fight with Justin Gaethje and Michael Chandler.\n" +
                        "<br/> \n" +
                        "Watch #UFC268 on Saturday from midnight on BT Sport 1 HD\n" +
                        "<br/> \n" +
                        "Hit 'Subscribe' above to ensure you never miss a video from the BT Sport YouTube channel.\n" +
                        "<br/> \n" +
                        "Get a BT Sport Monthly Pass now! - https://bit.ly/BTSportMonthlyPass \n" +
                        "<br/> \n" +
                        "Visit and subscribe to our 'BT Sport Boxing' YouTube channel ➡️ https://www.youtube.com/c/btsportboxing\n" +
                        "<br/> \n" +
                        "Twitter: https://twitter.com/btsport\n" +
                        "Facebook: https://www.facebook.com/btsport\n" +
                        "Instagram:https://instagram.com/btsport\n" +
                        "Website: https://sport.bt.com\n",
                0,
                0,
                "https://i.ytimg.com/vi/20fBE1SM8Qs/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBL580qwxEVOcClHEhA68TxI1AcLw",
                5,
                2,
                Timestamp.from(Instant.now()),
                Long.valueOf("0"),
                Timestamp.from(Instant.now()),
                Long.valueOf("0")
        ));
        return videos;
    }

    public Collection<User> initUsers() {
        Collection<User> users = new ArrayList<>();
        //1
        users.add(new User(
                "admin@admin.com",
                "admin",
                "",
                0,
                "",
                "",
                "",
                Timestamp.from(Instant.now()),
                Long.valueOf("0"),
                Timestamp.from(Instant.now()),
                Long.valueOf("0")

        ));
        //2
        users.add(new User(
                "OnlyCProduction@gmail.com",
                "OnlyC",
                "https://yt3.ggpht.com/ytc/AKedOLQP9zdpwh2taUVYk9l222wF0val-5K5YuIAwDZPKw=s88-c-k-c0x00ffffff-no-rj",
                0,
                "OnlyC Production",
                "https://yt3.ggpht.com/ytc/AKedOLQP9zdpwh2taUVYk9l222wF0val-5K5YuIAwDZPKw=s88-c-k-c0x00ffffff-no-rj",
                "https://yt3.ggpht.com/5M_RTAUzWNyQgIRXIxv4tgYRpdmpAnwwQ6K9tRQcTxZXzkrAj2xnhpsQW_rFAEWSM5M_wDa01w=w1060-fcrop64=1,00005a57ffffa5a8-k-c0xffffffff-no-nd-rj",
                Timestamp.from(Instant.now()),
                Long.valueOf("0"),
                Timestamp.from(Instant.now()),
                Long.valueOf("0")
        ));
        //3
        users.add(new User(
                "toxic@gmail.com",
                "Toxic",
                "https://yt3.ggpht.com/QDp585bDwvybHak4JtHGMiZk8DX-23-oBYMKGSiH7UzUVlX9_dppq7YvP6z58OkWpM4qRocdGA=s88-c-k-c0x00ffffff-no-rj",
                0,
                "Toxic dope",
                "https://yt3.ggpht.com/QDp585bDwvybHak4JtHGMiZk8DX-23-oBYMKGSiH7UzUVlX9_dppq7YvP6z58OkWpM4qRocdGA=s88-c-k-c0x00ffffff-no-rj",
                "https://yt3.ggpht.com/ezJgFAnIXzk8fCTBXEuS1Uer5YVWjcGvOgQ8llvP1XOcxrwcAKxmiyk4auuEtVlQBcXHXZ6SJw=w1060-fcrop64=1,00005a57ffffa5a8-k-c0xffffffff-no-nd-rj",
                Timestamp.from(Instant.now()),
                Long.valueOf("0"),
                Timestamp.from(Instant.now()),
                Long.valueOf("0")
        ));
        //4
        users.add(new User(
                "nextsports@gmail.com",
                "Next sports",
                "https://yt3.ggpht.com/PvAIR0wanzXo0hFrr9i-JjKGgRuAcljoPtTCXC2xaRgzBipmTkihp9ofgl_m7nzz5U6rcXOw-Q=s88-c-k-c0x00ffffff-no-rj",
                0,
                "NEXT SPORTS",
                "https://yt3.ggpht.com/PvAIR0wanzXo0hFrr9i-JjKGgRuAcljoPtTCXC2xaRgzBipmTkihp9ofgl_m7nzz5U6rcXOw-Q=s88-c-k-c0x00ffffff-no-rj",
                "https://yt3.ggpht.com/qzwHXiFpQ3YLaQJ_ZR1zh4PBcIyYcIDAVa5fIxJIIIi2CHuh38AAnbK9SmibRCA99H4ortecaA=w1707-fcrop64=1,00005a57ffffa5a8-k-c0xffffffff-no-nd-rj",
                Timestamp.from(Instant.now()),
                Long.valueOf("0"),
                Timestamp.from(Instant.now()),
                Long.valueOf("0")

        ));
        //5
        users.add(new User(
                "btsport@gmail.com",
                "btsport",
                "https://yt3.ggpht.com/ytc/AKedOLTah3wO8rXzUJAUk_Mc2yqGPUTdk6L5809pq9jaoQ=s88-c-k-c0x00ffffff-no-rj",
                0,
                "BT Sport",
                "https://yt3.ggpht.com/ytc/AKedOLTah3wO8rXzUJAUk_Mc2yqGPUTdk6L5809pq9jaoQ=s88-c-k-c0x00ffffff-no-rj",
                "https://yt3.ggpht.com/R3u6oAK7Lu6PFLxb_BW9RUfMVsMzG96irtpCKzsRRQKuSfYi4awv6hp7qbvge40J1jXfBPD9Yw=w1707-fcrop64=1,00005a57ffffa5a8-k-c0xffffffff-no-nd-rj",
                Timestamp.from(Instant.now()),
                Long.valueOf("0"),
                Timestamp.from(Instant.now()),
                Long.valueOf("0")
        ));
        return users;
    }

    public void init() {

        Collection<Category> categories = initCategories();
        for (Category category : categories) {
            categoryDAO.insert(category);
        }

        Collection<User> users = initUsers();
        for (User user : users) {
            userDAO.insert(user);
        }

        Collection<Video> videos = initVideos();
        for (Video video : videos) {
            videoDAO.insert(video);
        }

    }
}
