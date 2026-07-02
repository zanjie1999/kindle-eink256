.class Lcom/amazon/kcp/reader/StandaloneShareHelper$4;
.super Ljava/lang/Object;
.source "StandaloneShareHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/StandaloneShareHelper;->getShareableSocialNetworkList()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/StandaloneShareHelper;)V
    .locals 0

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 405
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/reader/StandaloneShareHelper$4;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 408
    invoke-static {}, Lcom/amazon/kcp/reader/StandaloneShareHelper;->access$200()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/reader/StandaloneShareHelper$SocialNetworkInformation;

    iget p1, p1, Lcom/amazon/kcp/reader/StandaloneShareHelper$SocialNetworkInformation;->order:I

    invoke-static {}, Lcom/amazon/kcp/reader/StandaloneShareHelper;->access$200()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kcp/reader/StandaloneShareHelper$SocialNetworkInformation;

    iget p2, p2, Lcom/amazon/kcp/reader/StandaloneShareHelper$SocialNetworkInformation;->order:I

    sub-int/2addr p1, p2

    return p1
.end method
