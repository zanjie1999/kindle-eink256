.class public final enum Lcom/amazon/kindle/model/content/LocalContentFeatureType;
.super Ljava/lang/Enum;
.source "LocalContentFeatureType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/model/content/LocalContentFeatureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/model/content/LocalContentFeatureType;

.field public static final enum Annotations:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

.field public static final enum BookExtras:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

.field public static final enum Bookmarks:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

.field public static final enum ContinuousScrollReflowable:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

.field public static final enum DictionaryCapabilities:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

.field public static final enum DisableLocationNavigation:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

.field public static final enum FontFaceChange:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

.field public static final enum GraphicalHighlights:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

.field public static final enum GuidedView:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

.field public static final enum GuidedViewNative:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

.field public static final enum MultimediaContent:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

.field public static final enum RaggedRight:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

.field public static final enum ResizableFont:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

.field public static final enum Sharing:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

.field public static final enum StaticPagination:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

.field public static final enum ThumbnailGeneration:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

.field public static final enum ThumbnailScrubber:Lcom/amazon/kindle/model/content/LocalContentFeatureType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 4
    new-instance v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    const/4 v1, 0x0

    const-string v2, "Annotations"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/model/content/LocalContentFeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->Annotations:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    .line 5
    new-instance v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    const/4 v2, 0x1

    const-string v3, "Bookmarks"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/model/content/LocalContentFeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->Bookmarks:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    .line 6
    new-instance v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    const/4 v3, 0x2

    const-string v4, "BookExtras"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/model/content/LocalContentFeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->BookExtras:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    .line 7
    new-instance v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    const/4 v4, 0x3

    const-string v5, "DictionaryCapabilities"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/model/content/LocalContentFeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->DictionaryCapabilities:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    .line 8
    new-instance v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    const/4 v5, 0x4

    const-string v6, "FontFaceChange"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/model/content/LocalContentFeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->FontFaceChange:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    .line 9
    new-instance v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    const/4 v6, 0x5

    const-string v7, "ResizableFont"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kindle/model/content/LocalContentFeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->ResizableFont:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    .line 10
    new-instance v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    const/4 v7, 0x6

    const-string v8, "Sharing"

    invoke-direct {v0, v8, v7}, Lcom/amazon/kindle/model/content/LocalContentFeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->Sharing:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    .line 11
    new-instance v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    const/4 v8, 0x7

    const-string v9, "DisableLocationNavigation"

    invoke-direct {v0, v9, v8}, Lcom/amazon/kindle/model/content/LocalContentFeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->DisableLocationNavigation:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    .line 12
    new-instance v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    const/16 v9, 0x8

    const-string v10, "StaticPagination"

    invoke-direct {v0, v10, v9}, Lcom/amazon/kindle/model/content/LocalContentFeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->StaticPagination:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    .line 13
    new-instance v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    const/16 v10, 0x9

    const-string v11, "MultimediaContent"

    invoke-direct {v0, v11, v10}, Lcom/amazon/kindle/model/content/LocalContentFeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->MultimediaContent:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    .line 17
    new-instance v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    const/16 v11, 0xa

    const-string v12, "ThumbnailScrubber"

    invoke-direct {v0, v12, v11}, Lcom/amazon/kindle/model/content/LocalContentFeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->ThumbnailScrubber:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    .line 19
    new-instance v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    const/16 v12, 0xb

    const-string v13, "GraphicalHighlights"

    invoke-direct {v0, v13, v12}, Lcom/amazon/kindle/model/content/LocalContentFeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->GraphicalHighlights:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    .line 24
    new-instance v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    const/16 v13, 0xc

    const-string v14, "ThumbnailGeneration"

    invoke-direct {v0, v14, v13}, Lcom/amazon/kindle/model/content/LocalContentFeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->ThumbnailGeneration:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    .line 25
    new-instance v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    const/16 v14, 0xd

    const-string v15, "GuidedView"

    invoke-direct {v0, v15, v14}, Lcom/amazon/kindle/model/content/LocalContentFeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->GuidedView:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    .line 26
    new-instance v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    const/16 v15, 0xe

    const-string v14, "RaggedRight"

    invoke-direct {v0, v14, v15}, Lcom/amazon/kindle/model/content/LocalContentFeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->RaggedRight:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    .line 31
    new-instance v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    const/16 v14, 0xf

    const-string v15, "ContinuousScrollReflowable"

    invoke-direct {v0, v15, v14}, Lcom/amazon/kindle/model/content/LocalContentFeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->ContinuousScrollReflowable:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    .line 32
    new-instance v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    const/16 v15, 0x10

    const-string v14, "GuidedViewNative"

    invoke-direct {v0, v14, v15}, Lcom/amazon/kindle/model/content/LocalContentFeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->GuidedViewNative:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    const/16 v14, 0x11

    new-array v14, v14, [Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    .line 3
    sget-object v16, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->Annotations:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    aput-object v16, v14, v1

    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->Bookmarks:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->BookExtras:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    aput-object v1, v14, v3

    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->DictionaryCapabilities:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    aput-object v1, v14, v4

    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->FontFaceChange:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    aput-object v1, v14, v5

    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->ResizableFont:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    aput-object v1, v14, v6

    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->Sharing:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    aput-object v1, v14, v7

    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->DisableLocationNavigation:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    aput-object v1, v14, v8

    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->StaticPagination:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    aput-object v1, v14, v9

    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->MultimediaContent:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    aput-object v1, v14, v10

    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->ThumbnailScrubber:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    aput-object v1, v14, v11

    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->GraphicalHighlights:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    aput-object v1, v14, v12

    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->ThumbnailGeneration:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    aput-object v1, v14, v13

    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->GuidedView:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->RaggedRight:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->ContinuousScrollReflowable:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    aput-object v0, v14, v15

    sput-object v14, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->$VALUES:[Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/model/content/LocalContentFeatureType;
    .locals 1

    .line 3
    const-class v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/model/content/LocalContentFeatureType;
    .locals 1

    .line 3
    sget-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->$VALUES:[Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/model/content/LocalContentFeatureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    return-object v0
.end method
