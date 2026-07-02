.class Lcom/amazon/kindle/modules/KRF4ContentModule$1;
.super Ljava/lang/Object;
.source "KRF4ContentModule.java"

# interfaces
.implements Lcom/amazon/kcp/reader/ui/IBookLayoutProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/modules/KRF4ContentModule;->initialize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kindle/modules/KRF4ContentModule;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBookLayoutId(Lcom/amazon/kindle/model/content/ILocalBookInfo;)I
    .locals 0

    .line 98
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/download/MimeTypeHelper;->isMopMimeType(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 99
    sget p1, Lcom/amazon/kindle/krl/R$layout;->graphical_highlight_layout:I

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
