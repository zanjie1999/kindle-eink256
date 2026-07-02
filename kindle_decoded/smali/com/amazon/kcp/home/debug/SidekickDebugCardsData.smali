.class public final Lcom/amazon/kcp/home/debug/SidekickDebugCardsData;
.super Ljava/lang/Object;
.source "SidekickDebugCardsData.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/home/debug/SidekickDebugCardsData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/amazon/kcp/home/debug/SidekickDebugCardsData;

    invoke-direct {v0}, Lcom/amazon/kcp/home/debug/SidekickDebugCardsData;-><init>()V

    sput-object v0, Lcom/amazon/kcp/home/debug/SidekickDebugCardsData;->INSTANCE:Lcom/amazon/kcp/home/debug/SidekickDebugCardsData;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBookEntityList()Ljava/util/List;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/home/model/BookEntity;",
            ">;"
        }
    .end annotation

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v14, Lcom/amazon/kindle/home/model/BookEntity;

    const-string v2, "B07Q5TL9SQ"

    const-string v3, "If You Tell: A True Story of Murder, Family Secrets, and the Unbreakable Bond of Sisterhood"

    const-string v4, "Gregg Olsen"

    const-string v5, "https://images-na.ssl-images-amazon.com/images/I/410K-S--pmL._PJku-sticker-v7,TopRight,0,-50._UX266_._FMpng_.jpg"

    const-string v6, "https://images-na.ssl-images-amazon.com/images/I/410K-S--pmL._PJku-sticker-v6,TopRight,0,-50._UX266_._FMpng_.jpg"

    const-string v7, "If You Tell: A True Story of Murder, Family Secrets, and the Unbreakable Bond of Sisterhood by Gregg Olsen"

    const-string v8, "/gp/aw/d/B07Q5TL9SQ?storeType=ebooks&pf_rd_t=&pd_rd_i=B07Q5TL9SQ&pf_rd_m=ATVPDKIKX0DER&pageType=KINDLEREADERHOME&pf_rd_p=4c4d970c-7da2-4c5f-9eed-af44fcaaa37b&pf_rd_r=BE808CD25B3042A18140&pd_rd_wg=sBTC0&ref_=dbs_h_def_iom_0000_sk-ios-cmrnf_0&pd_rd_w=Jscl3&pf_rd_i=&pd_rd_r=14671d47-cea3-4816-812a-d6c9d8fe237b"

    const-string v9, ""

    const-string v10, "dbs_h_def_kam_0000_sk-kfa-rfy_0"

    const/4 v11, 0x0

    const/16 v12, 0x200

    const/4 v13, 0x0

    move-object v1, v14

    invoke-direct/range {v1 .. v13}, Lcom/amazon/kindle/home/model/BookEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance v1, Lcom/amazon/kindle/home/model/BookEntity;

    const-string v16, "B072BLVM83"

    const-string v17, "Educated: A Memoir"

    const-string v18, "Tara Westover"

    const-string v19, "https://images-na.ssl-images-amazon.com/images/I/41+aN7ZbS9L._UX266_.jpg"

    const-string v20, "https://images-na.ssl-images-amazon.com/images/I/41+aN7ZbS9L._UX266_.jpg"

    const-string v21, "Educated: A Memoir by Tara Westover"

    const-string v22, "/gp/aw/d/B072BLVM83?storeType=ebooks&pf_rd_t=&pd_rd_i=B072BLVM83&pf_rd_m=ATVPDKIKX0DER&pageType=KINDLEREADERHOME&pf_rd_p=4c4d970c-7da2-4c5f-9eed-af44fcaaa37b&pf_rd_r=BE808CD25B3042A18140&pd_rd_wg=sBTC0&ref_=dbs_h_def_iom_0000_sk-ios-cmrnf_1&pd_rd_w=Jscl3&pf_rd_i=&pd_rd_r=14671d47-cea3-4816-812a-d6c9d8fe237b"

    const-string v23, ""

    const-string v24, "dbs_h_def_kam_0000_sk-kfa-rfy_1"

    const/16 v25, 0x0

    const/16 v26, 0x200

    const/16 v27, 0x0

    move-object v15, v1

    invoke-direct/range {v15 .. v27}, Lcom/amazon/kindle/home/model/BookEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v1, Lcom/amazon/kindle/home/model/BookEntity;

    const-string v3, "B00329UWL8"

    const-string v4, "Becoming"

    const-string v5, "Michelle Obama"

    const-string v6, "https://images-na.ssl-images-amazon.com/images/I/41dsMrDb-nL._UX266_.jpg"

    const-string v7, "https://images-na.ssl-images-amazon.com/images/I/41dsMrDb-nL._UX266_.jpg"

    const-string v8, "Becoming by Michelle Obama"

    const-string v9, "/gp/aw/d/B079ZYWJJ8?storeType=ebooks&pf_rd_t=&pd_rd_i=B079ZYWJJ8&pf_rd_m=ATVPDKIKX0DER&pageType=KINDLEREADERHOME&pf_rd_p=4c4d970c-7da2-4c5f-9eed-af44fcaaa37b&pf_rd_r=FEF7421E28BC4664A02B&pd_rd_wg=CqxJc&ref_=dbs_h_def_iom_0000_sk-ios-cmrnf_2&pd_rd_w=LnuJl&pf_rd_i=&pd_rd_r=f1da4c1d-dd7f-4948-90dd-3560f6a78492"

    const-string v10, ""

    const-string v11, "dbs_h_def_kam_0000_sk-kfa-rfy_2"

    const/4 v12, 0x0

    const/16 v13, 0x200

    const/4 v14, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v14}, Lcom/amazon/kindle/home/model/BookEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v1, Lcom/amazon/kindle/home/model/BookEntity;

    const-string v16, "B07VDMPNHG"

    const-string v17, "I Am a Baby"

    const-string v18, "Kathryn Madeline Allen"

    const-string v19, "https://images-na.ssl-images-amazon.com/images/I/51rKjYhVRIL._PJprime-reading2,TopRight,0,-50._UX266_._FMpng_.jpg"

    const-string v20, "https://images-na.ssl-images-amazon.com/images/I/51rKjYhVRIL._PJprime-reading2,TopRight,0,-50._UX266_._FMpng_.jpg"

    const-string v21, "I Am a Baby by Kathryn Madeline Allen, Rebecca Gizicki"

    const-string v22, "/gp/aw/d/B07VDMPNHG?storeType=ebooks&pf_rd_t=&pd_rd_i=B07VDMPNHG&pf_rd_m=ATVPDKIKX0DER&pageType=KINDLEREADERHOME&pf_rd_p=21493a64-fdda-4c7e-94d5-3cb85864c9a0&pf_rd_r=GPX85ND23YB1PJP12ZS4&pd_rd_wg=K4I5d&ref_=dbs_h_def_iom_0000_sk-ios-mlb1_3&pd_rd_w=Vc9wX&pf_rd_i=&pd_rd_r=ecc64ba8-2293-4b87-8e43-6f6607d39ce2"

    const-string v23, ""

    const-string v24, "dbs_h_def_kam_0000_sk-kfa-rfy_3"

    move-object v15, v1

    invoke-direct/range {v15 .. v27}, Lcom/amazon/kindle/home/model/BookEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v1, Lcom/amazon/kindle/home/model/BookEntity;

    const-string v3, "B019MMUA8S"

    const-string v4, "The Subtle Art of Not Giving a F*ck: A Counterintuitive Approach to Living a Good Life (Mark Manson Collection Book 1)"

    const-string v5, "Mark Manson"

    const-string v6, "https://images-na.ssl-images-amazon.com/images/I/51mN3bY0JjL._UX266_.jpg"

    const-string v7, "https://images-na.ssl-images-amazon.com/images/I/51mN3bY0JjL._UX266_.jpg"

    const-string v8, "The Subtle Art of Not Giving a F*ck: A Counterintuitive Approach to Living a Good Life (Mark Manson Collection Book 1) by Mark Manson"

    const-string v9, "/gp/aw/d/B019MMUA8S?storeType=ebooks&pf_rd_t=&pd_rd_i=B019MMUA8S&pf_rd_m=ATVPDKIKX0DER&pageType=KINDLEREADERHOME&pf_rd_p=4c4d970c-7da2-4c5f-9eed-af44fcaaa37b&pf_rd_r=FEF7421E28BC4664A02B&pd_rd_wg=CqxJc&ref_=dbs_h_def_iom_0000_sk-ios-cmrnf_4&pd_rd_w=LnuJl&pf_rd_i=&pd_rd_r=f1da4c1d-dd7f-4948-90dd-3560f6a78492"

    const-string v10, ""

    const-string v11, "dbs_h_def_kam_0000_sk-kfa-rfy_4"

    move-object v2, v1

    invoke-direct/range {v2 .. v14}, Lcom/amazon/kindle/home/model/BookEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v1, Lcom/amazon/kindle/home/model/BookEntity;

    const-string v16, "B01M0ZTXCT"

    const-string v17, "The Secret Stealers: A Novel"

    const-string v18, "Jane Healey"

    const-string v19, "https://images-na.ssl-images-amazon.com/images/I/51IYtok2S6L._PJprime-reading2,TopRight,0,-50._UX266_._FMpng_.jpg"

    const-string v20, "https://images-na.ssl-images-amazon.com/images/I/51IYtok2S6L._PJprime-reading2,TopRight,0,-50._UX266_._FMpng_.jpg"

    const-string v21, "The Secret Stealers: A Novel by Jane Healey, available through Prime Reading"

    const-string v22, "/gp/aw/d/B089GSG9K5?storeType=ebooks&pf_rd_t=&pd_rd_i=B089GSG9K5&pf_rd_m=ATVPDKIKX0DER&pageType=KINDLEREADERHOME&pf_rd_p=1a495c94-2189-4d62-8226-cbbbef5fe810&pf_rd_r=87265590BFD74BBAAF04&pd_rd_wg=jT4W1&ref_=dbs_h_def_iom_0000_sk-ios-nr_5&pd_rd_w=Zcucq&pf_rd_i=&pd_rd_r=c6d9f0a0-bf48-48a1-89b0-519b6490f58c"

    const-string v23, ""

    const-string v24, "dbs_h_def_kam_0000_sk-kfa-rfy_5"

    move-object v15, v1

    invoke-direct/range {v15 .. v27}, Lcom/amazon/kindle/home/model/BookEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v1, Lcom/amazon/kindle/home/model/BookEntity;

    const-string v3, "B0899ZSB11"

    const-string v4, "A Deadly Influence (Abby Mullen Thrillers Book 1)"

    const-string v5, "Mike Omer"

    const-string v6, "https://images-na.ssl-images-amazon.com/images/I/51sncP6OwmL._UX266_.jpg"

    const-string v7, "https://images-na.ssl-images-amazon.com/images/I/51sncP6OwmL._UX266_.jpg"

    const-string v8, "A Deadly Influence (Abby Mullen Thrillers Book 1) by Mike Omer"

    const-string v9, "/gp/aw/d/B0899ZSB11?storeType=ebooks&pf_rd_t=&pd_rd_i=B0899ZSB11&pf_rd_m=ATVPDKIKX0DER&pageType=KINDLEREADERHOME&pf_rd_p=1a495c94-2189-4d62-8226-cbbbef5fe810&pf_rd_r=87265590BFD74BBAAF04&pd_rd_wg=jT4W1&ref_=dbs_h_def_iom_0000_sk-ios-nr_2&pd_rd_w=Zcucq&pf_rd_i=&pd_rd_r=c6d9f0a0-bf48-48a1-89b0-519b6490f58c"

    const-string v10, ""

    const-string v11, "dbs_h_def_kam_0000_sk-kfa-rfy_6"

    move-object v2, v1

    invoke-direct/range {v2 .. v14}, Lcom/amazon/kindle/home/model/BookEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v1, Lcom/amazon/kindle/home/model/BookEntity;

    const-string v16, "B08XC816XM"

    const-string v17, "Forever Never"

    const-string v18, "Lucy Score"

    const-string v19, "https://images-na.ssl-images-amazon.com/images/I/51+Ui8pEPFL._PJku-sticker-v7,TopRight,0,-50._UX266_._FMpng_.jpg"

    const-string v20, "https://images-na.ssl-images-amazon.com/images/I/51+Ui8pEPFL._PJku-sticker-v6,TopRight,0,-50._UX266_._FMpng_.jpg"

    const-string v21, "Forever Never by Lucy Score, avaiable through Kindle Unlimited"

    const-string v22, "/gp/aw/d/B08XC816XM?storeType=ebooks&pf_rd_t=&pd_rd_i=B08XC816XM&pf_rd_m=ATVPDKIKX0DER&pageType=KINDLEREADERHOME&pf_rd_p=1a495c94-2189-4d62-8226-cbbbef5fe810&pf_rd_r=87265590BFD74BBAAF04&pd_rd_wg=jT4W1&ref_=dbs_h_def_iom_0000_sk-ios-nr_1&pd_rd_w=Zcucq&pf_rd_i=&pd_rd_r=c6d9f0a0-bf48-48a1-89b0-519b6490f58c"

    const-string v23, ""

    const-string v24, "dbs_h_def_kam_0000_sk-kfa-rfy_7"

    move-object v15, v1

    invoke-direct/range {v15 .. v27}, Lcom/amazon/kindle/home/model/BookEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v1, Lcom/amazon/kindle/home/model/BookEntity;

    const-string v3, "B08G1XNG7J"

    const-string v4, "The Code Breaker: Jennifer Doudna, Gene Editing, and the Future of the Human Race"

    const-string v5, "Walter Isaacson"

    const-string v6, "https://images-na.ssl-images-amazon.com/images/I/41KMmXBPckL._PJku-sticker-v7,TopRight,0,-50._UX266_._FMpng_.jpg"

    const-string v7, "https://images-na.ssl-images-amazon.com/images/I/41KMmXBPckL._PJku-sticker-v6,TopRight,0,-50._UX266_._FMpng_.jpg"

    const-string v8, "The Code Breaker: Jennifer Doudna, Gene Editing, and the Future of the Human Race by Walter Isaacson, avaiable through Kindle Unlimited"

    const-string v9, "/gp/aw/d/B08G1XNG7J?storeType=ebooks&pf_rd_t=&pd_rd_i=B08G1XNG7J&pf_rd_m=ATVPDKIKX0DER&pageType=KINDLEREADERHOME&pf_rd_p=1a495c94-2189-4d62-8226-cbbbef5fe810&pf_rd_r=87265590BFD74BBAAF04&pd_rd_wg=jT4W1&ref_=dbs_h_def_iom_0000_sk-ios-nr_3&pd_rd_w=Zcucq&pf_rd_i=&pd_rd_r=c6d9f0a0-bf48-48a1-89b0-519b6490f58c"

    const-string v10, ""

    const-string v11, "dbs_h_def_kam_0000_sk-kfa-rfy_8"

    move-object v2, v1

    invoke-direct/range {v2 .. v14}, Lcom/amazon/kindle/home/model/BookEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v1, Lcom/amazon/kindle/home/model/BookEntity;

    const-string v16, "B07T2GH28N"

    const-string v17, "The Babies and Kitties Book"

    const-string v18, "John Schindel"

    const-string v19, "https://images-na.ssl-images-amazon.com/images/I/51MUVhcuzOL._UX266_.jpg"

    const-string v20, "https://images-na.ssl-images-amazon.com/images/I/51MUVhcuzOL._UX266_.jpg"

    const-string v21, "The Babies and Kitties Book by John Schindel, Molly Woodward"

    const-string v22, "/gp/aw/d/B07T2GH28N?storeType=ebooks&pf_rd_t=&pd_rd_i=B07T2GH28N&pf_rd_m=ATVPDKIKX0DER&pageType=KINDLEREADERHOME&pf_rd_p=21493a64-fdda-4c7e-94d5-3cb85864c9a0&pf_rd_r=GPX85ND23YB1PJP12ZS4&pd_rd_wg=K4I5d&ref_=dbs_h_def_iom_0000_sk-ios-mlb1_0&pd_rd_w=Vc9wX&pf_rd_i=&pd_rd_r=ecc64ba8-2293-4b87-8e43-6f6607d39ce2"

    const-string v23, ""

    const-string v24, "dbs_h_def_kam_0000_sk-kfa-rfy_9"

    move-object v15, v1

    invoke-direct/range {v15 .. v27}, Lcom/amazon/kindle/home/model/BookEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
