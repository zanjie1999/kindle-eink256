.class public final enum Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;
.super Ljava/lang/Enum;
.source "ReaderActivityFeatureType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

.field public static final enum ActiveArea:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

.field public static final enum BackNavigation:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

.field public static final enum BirdsEyeView:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

.field public static final enum Bookmark:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

.field public static final enum GraphicalHighlights:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

.field public static final enum PageFlip:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

.field public static final enum Search:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

.field public static final enum SearchBaidu:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

.field public static final enum SearchWeb:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

.field public static final enum SearchWiki:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

.field public static final enum Selection:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

.field public static final enum SidePanel:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 4
    new-instance v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    const/4 v1, 0x0

    const-string v2, "ActiveArea"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->ActiveArea:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    .line 5
    new-instance v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    const/4 v2, 0x1

    const-string v3, "BackNavigation"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->BackNavigation:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    .line 6
    new-instance v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    const/4 v3, 0x2

    const-string v4, "Bookmark"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->Bookmark:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    .line 7
    new-instance v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    const/4 v4, 0x3

    const-string v5, "Search"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->Search:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    .line 8
    new-instance v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    const/4 v5, 0x4

    const-string v6, "GraphicalHighlights"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->GraphicalHighlights:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    .line 9
    new-instance v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    const/4 v6, 0x5

    const-string v7, "SearchBaidu"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->SearchBaidu:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    .line 10
    new-instance v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    const/4 v7, 0x6

    const-string v8, "SearchWiki"

    invoke-direct {v0, v8, v7}, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->SearchWiki:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    .line 11
    new-instance v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    const/4 v8, 0x7

    const-string v9, "SearchWeb"

    invoke-direct {v0, v9, v8}, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->SearchWeb:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    .line 12
    new-instance v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    const/16 v9, 0x8

    const-string v10, "Selection"

    invoke-direct {v0, v10, v9}, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->Selection:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    .line 13
    new-instance v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    const/16 v10, 0x9

    const-string v11, "SidePanel"

    invoke-direct {v0, v11, v10}, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->SidePanel:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    .line 14
    new-instance v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    const/16 v11, 0xa

    const-string v12, "BirdsEyeView"

    invoke-direct {v0, v12, v11}, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->BirdsEyeView:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    .line 15
    new-instance v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    const/16 v12, 0xb

    const-string v13, "PageFlip"

    invoke-direct {v0, v13, v12}, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->PageFlip:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    const/16 v13, 0xc

    new-array v13, v13, [Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    .line 3
    sget-object v14, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->ActiveArea:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    aput-object v14, v13, v1

    sget-object v1, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->BackNavigation:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->Bookmark:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    aput-object v1, v13, v3

    sget-object v1, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->Search:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    aput-object v1, v13, v4

    sget-object v1, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->GraphicalHighlights:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    aput-object v1, v13, v5

    sget-object v1, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->SearchBaidu:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    aput-object v1, v13, v6

    sget-object v1, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->SearchWiki:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    aput-object v1, v13, v7

    sget-object v1, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->SearchWeb:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    aput-object v1, v13, v8

    sget-object v1, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->Selection:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    aput-object v1, v13, v9

    sget-object v1, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->SidePanel:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    aput-object v1, v13, v10

    sget-object v1, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->BirdsEyeView:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    aput-object v1, v13, v11

    aput-object v0, v13, v12

    sput-object v13, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->$VALUES:[Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;
    .locals 1

    .line 3
    const-class v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;
    .locals 1

    .line 3
    sget-object v0, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->$VALUES:[Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    return-object v0
.end method
