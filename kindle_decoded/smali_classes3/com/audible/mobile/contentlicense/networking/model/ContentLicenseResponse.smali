.class public Lcom/audible/mobile/contentlicense/networking/model/ContentLicenseResponse;
.super Ljava/lang/Object;
.source "ContentLicenseResponse.java"


# instance fields
.field private contentLicense:Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content_license"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentLicense()Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/model/ContentLicenseResponse;->contentLicense:Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;

    return-object v0
.end method
