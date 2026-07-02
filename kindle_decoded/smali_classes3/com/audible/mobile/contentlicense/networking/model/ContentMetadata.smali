.class public Lcom/audible/mobile/contentlicense/networking/model/ContentMetadata;
.super Ljava/lang/Object;
.source "ContentMetadata.java"


# instance fields
.field private chapterInfo:Lcom/audible/mobile/contentlicense/networking/model/ChapterInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "chapter_info"
    .end annotation
.end field

.field private contentReference:Lcom/audible/mobile/contentlicense/networking/model/ContentReference;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content_reference"
    .end annotation
.end field

.field private contentUrl:Lcom/audible/mobile/contentlicense/networking/model/ContentUrl;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content_url"
    .end annotation
.end field

.field private lastPositionHeard:Lcom/audible/mobile/contentlicense/networking/model/LastPositionHeard;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_position_heard"
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
.method public getChapterInfo()Lcom/audible/mobile/contentlicense/networking/model/ChapterInfo;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/model/ContentMetadata;->chapterInfo:Lcom/audible/mobile/contentlicense/networking/model/ChapterInfo;

    return-object v0
.end method

.method public getContentReference()Lcom/audible/mobile/contentlicense/networking/model/ContentReference;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/model/ContentMetadata;->contentReference:Lcom/audible/mobile/contentlicense/networking/model/ContentReference;

    return-object v0
.end method

.method public getContentUrl()Lcom/audible/mobile/contentlicense/networking/model/ContentUrl;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/model/ContentMetadata;->contentUrl:Lcom/audible/mobile/contentlicense/networking/model/ContentUrl;

    return-object v0
.end method
