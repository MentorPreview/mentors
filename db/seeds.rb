Camp.destroy_all
Course.destroy_all
Mentor.destroy_all
Campus.destroy_all

courseTypes = CourseType.create([
    {name: "school"},
    {name: "app"},
    {name: "web"},
    {name: "game"},
    {name: "coding"},
    {name: "creative"},
    {name: "design"},
])

courses = Course.create([
    {name: "iPhoneアプリプログラミングコース", img_url: "./assets/images/course/iPhone.png"},
    {name: "Androidアプリプログラミングコース", img_url: "./assets/images/course/Android.png"},
    {name: "Unity®ゲームプログラミングコース（2D・3D）", img_url: "./assets/images/course/Unity.png"},
    {name: "Webデザインコース（HTML/CSS）", img_url: "./assets/images/course/webD.png"},
    {name: "Webサービスプログラミングコース（Ruby）", img_url: "./assets/images/course/webS.png"},
    {name: "映像制作コース", img_url: "./assets/images/course/Movie.png"},
    {name: "アニメーションコース", img_url: "./assets/images/course/Animation.png"},
    {name: "デザイナーコース（Photoshop/Illustrator）", img_url: "./assets/images/course/Designer.png"},
    {name: "メディアアートプログラミングコース", img_url: "./assets/images/course/MediaArt.png"},
    {name: "ゲームクリエイター体験（2D）コース", img_url: "./assets/images/course/2D.png"},
    {name: "Minecraftプログラミングコース", img_url: "./assets/images/course/Minecraft.png"},
    {name: "デジタルミュージックコース", img_url: "./assets/images/course/DTM.png"},
    {name: "Maya 3DCGコース", img_url: "./assets/images/course/Maya.png"},
    {name: "初音ミクV3コース", img_url: "./assets/images/course/Miku.png"},
    {name: "LINEスタンプクリエイターコース", img_url: "./assets/images/course/Line.png"},
    {name: "IoT入門 with MESH コース", img_url: "./assets/images/course/IoT.png"},
    {name: "カメラ＆フォトグラフィコース", img_url: "./assets/images/course/Camera.png"},
    ])
    
courses[0].course_types << courseTypes[0]
    
mentors = Mentor.create([
    {name: "バッハ", img_url: "./assets/images/mentors/bach.jpg"},
    {name: "ちゃーはん", img_url: "./assets/images/mentors/cha-han.jpg"},
    {name: "デイジー", img_url: "./assets/images/mentors/daisy.jpg"},
    {name: "デップ", img_url: "./assets/images/mentors/deppu.jpg"},
    {name: "えんほう", img_url: "./assets/images/mentors/enhou.jpg"},
    {name: "ふなみん", img_url: "./assets/images/mentors/funamin.jpg"},
    {name: "ゴディバ", img_url: "./assets/images/mentors/godiva.jpg"},
    {name: "いちげん", img_url: "./assets/images/mentors/ichigen.jpg"},
    {name: "いわのこ", img_url: "./assets/images/mentors/iwanoko.jpg"},
    {name: "かおる", img_url: "./assets/images/mentors/kaoru.jpg"},
    {name: "けんちゃん", img_url: "./assets/images/mentors/kenchan.jpg"},
    {name: "kenty", img_url: "./assets/images/mentors/kenty.jpg"},
    {name: "こばとん", img_url: "./assets/images/mentors/kobaton.jpg"},
    {name: "りさてぃん", img_url: "./assets/images/mentors/lisatin.jpg"},
    {name: "まこ", img_url: "./assets/images/mentors/mako.jpg"},
    {name: "もるもる", img_url: "./assets/images/mentors/morumoru.jpg"},
    {name: "ながた", img_url: "./assets/images/mentors/nagata.jpg"},
    {name: "ニーザ", img_url: "./assets/images/mentors/ni-za.jpg"},
    {name: "ノコノコ", img_url: "./assets/images/mentors/nokonoko.jpg"},
    {name: "おっしぃ", img_url: "./assets/images/mentors/ossy.jpg"},
    {name: "さんちゃん", img_url: "./assets/images/mentors/sanchan.jpg"},
    {name: "しゃもじ", img_url: "./assets/images/mentors/syamoji.jpg"},
    {name: "しのきん", img_url: "./assets/images/mentors/shinokin.jpg"},
    {name: "サブウェイ", img_url: "./assets/images/mentors/subway.jpg"},
    {name: "とし", img_url: "./assets/images/mentors/toshi.jpg"},
    {name: "ツーブロ", img_url: "./assets/images/mentors/twoblo.jpg"},
])
    
campus = Campus.create([
    {
        official_name:"東京大学 本郷キャンパス",
        common_name: "東大本郷",
        university_name: "東京大学",
        campus_name: "本郷キャンパス",
        postal_code: "113-0033",
        address: "東京都文京区本郷7-3-1",
        lat: 35.711517, 
        lng: 139.760136,
        img_url: "./assets/images/campus/toudai_hongo.jpg"
    },
    {
        official_name:"東京大学 浅野キャンパス",
        common_name: "東大浅野",
        university_name: "東京大学",
        campus_name: "浅野キャンパス",
        postal_code: "113-0032",
        lat: 35.716061, 
        lng: 139.763384,
        address: "東京都文京区弥生2丁目2-11-16",
        img_url: "./assets/images/campus/toudai_asano.jpg"
    },
])

camps = Camp.create([
    {
        name:"7東大",
        img_url:"/assets/images/camp/summer2017.png"
    },
])

Camp.first.courses << courses[0]
Camp.first.courses << courses[1]
Camp.first.courses << courses[2]

Camp.first.mentors << mentors[0]
Camp.first.mentors << mentors[1]

mentors[0].courses << courses[0]
mentors[0].courses << courses[1]
mentors[1].courses << courses[1]
mentors[2].courses << courses[2]

campus[0].camps << camps[0]