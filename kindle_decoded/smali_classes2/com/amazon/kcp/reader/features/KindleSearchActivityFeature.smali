.class public Lcom/amazon/kcp/reader/features/KindleSearchActivityFeature;
.super Ljava/lang/Object;
.source "KindleSearchActivityFeature.java"

# interfaces
.implements Lcom/amazon/kcp/reader/features/SearchActivityFeature;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSupported(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 24
    sget-object v1, Lcom/amazon/kindle/model/content/ContentClass;->CHILDREN:Lcom/amazon/kindle/model/content/ContentClass;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v2

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/amazon/kindle/model/content/ContentClass;->MANGA:Lcom/amazon/kindle/model/content/ContentClass;

    .line 25
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v2

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/amazon/kindle/model/content/ContentClass;->COMIC:Lcom/amazon/kindle/model/content/ContentClass;

    .line 26
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object p1

    if-eq v1, p1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
