.class public Lcom/amazon/bookwizard/store/StoreManager;
.super Ljava/lang/Object;
.source "StoreManager.java"


# static fields
.field private static final METHOD_GET_CAMPAIGN:Ljava/lang/String; = "getCampaign"

.field private static final METHOD_GET_DETAIL:Ljava/lang/String; = "getDetail"

.field private static final METHOD_SEND_SAMPLE:Ljava/lang/String; = "sendSample"

.field private static final USER_CODE:Ljava/lang/String; = "AndroidKin"


# instance fields
.field private final appManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

.field private final storeManager:Lcom/amazon/kindle/krx/store/IStoreManager;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/store/IStoreManager;Lcom/amazon/kindle/krx/application/IApplicationManager;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/amazon/bookwizard/store/StoreManager;->storeManager:Lcom/amazon/kindle/krx/store/IStoreManager;

    .line 41
    iput-object p2, p0, Lcom/amazon/bookwizard/store/StoreManager;->appManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    return-void
.end method


# virtual methods
.method public downloadSample(Lcom/amazon/bookwizard/data/Book;)V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/amazon/bookwizard/store/StoreManager;->storeManager:Lcom/amazon/kindle/krx/store/IStoreManager;

    new-instance v1, Lcom/amazon/bookwizard/store/BookWrapper;

    sget-object v2, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-direct {v1, p1, v2}, Lcom/amazon/bookwizard/store/BookWrapper;-><init>(Lcom/amazon/bookwizard/data/Book;Lcom/amazon/kindle/krx/content/ContentType;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/store/IStoreManager;->downloadBook(Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method
