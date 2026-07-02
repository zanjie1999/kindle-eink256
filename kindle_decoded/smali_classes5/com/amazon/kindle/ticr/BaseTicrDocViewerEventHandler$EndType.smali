.class public final enum Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;
.super Ljava/lang/Enum;
.source "BaseTicrDocViewerEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EndType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;

.field public static final enum BOOK_END:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;

.field public static final enum CHAPTER_END:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;

.field public static final enum RECAPS_END:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 134
    new-instance v0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;

    const/4 v1, 0x0

    const-string v2, "BOOK_END"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;->BOOK_END:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;

    .line 135
    new-instance v0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;

    const/4 v2, 0x1

    const-string v3, "CHAPTER_END"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;->CHAPTER_END:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;

    .line 136
    new-instance v0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;

    const/4 v3, 0x2

    const-string v4, "RECAPS_END"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;->RECAPS_END:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;

    .line 133
    sget-object v5, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;->BOOK_END:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;->CHAPTER_END:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;->$VALUES:[Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;
    .locals 1

    .line 133
    const-class v0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;
    .locals 1

    .line 133
    sget-object v0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;->$VALUES:[Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;

    return-object v0
.end method
