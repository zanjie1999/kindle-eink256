.class Lcom/amazon/ku/service/GetKuInterstitialPageInfoRequest$RequestBody;
.super Ljava/lang/Object;
.source "GetKuInterstitialPageInfoRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ku/service/GetKuInterstitialPageInfoRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RequestBody"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/ebook/util/text/LanguageTag;->toLanguage(Ljava/util/Locale;)Ljava/lang/String;

    return-void
.end method
