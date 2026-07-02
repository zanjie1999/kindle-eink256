.class public final enum Lcom/amazon/kcp/reader/IReaderController$StartPagePrompt$Type;
.super Ljava/lang/Enum;
.source "IReaderController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/reader/IReaderController$StartPagePrompt$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/reader/IReaderController$StartPagePrompt$Type;

.field public static final enum LOCATION:Lcom/amazon/kcp/reader/IReaderController$StartPagePrompt$Type;

.field public static final enum PAGE:Lcom/amazon/kcp/reader/IReaderController$StartPagePrompt$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 118
    new-instance v0, Lcom/amazon/kcp/reader/IReaderController$StartPagePrompt$Type;

    const/4 v1, 0x0

    const-string v2, "LOCATION"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/reader/IReaderController$StartPagePrompt$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/IReaderController$StartPagePrompt$Type;->LOCATION:Lcom/amazon/kcp/reader/IReaderController$StartPagePrompt$Type;

    new-instance v0, Lcom/amazon/kcp/reader/IReaderController$StartPagePrompt$Type;

    const/4 v2, 0x1

    const-string v3, "PAGE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/reader/IReaderController$StartPagePrompt$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/IReaderController$StartPagePrompt$Type;->PAGE:Lcom/amazon/kcp/reader/IReaderController$StartPagePrompt$Type;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kcp/reader/IReaderController$StartPagePrompt$Type;

    sget-object v4, Lcom/amazon/kcp/reader/IReaderController$StartPagePrompt$Type;->LOCATION:Lcom/amazon/kcp/reader/IReaderController$StartPagePrompt$Type;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kcp/reader/IReaderController$StartPagePrompt$Type;->$VALUES:[Lcom/amazon/kcp/reader/IReaderController$StartPagePrompt$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/reader/IReaderController$StartPagePrompt$Type;
    .locals 1

    .line 118
    const-class v0, Lcom/amazon/kcp/reader/IReaderController$StartPagePrompt$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/IReaderController$StartPagePrompt$Type;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/reader/IReaderController$StartPagePrompt$Type;
    .locals 1

    .line 118
    sget-object v0, Lcom/amazon/kcp/reader/IReaderController$StartPagePrompt$Type;->$VALUES:[Lcom/amazon/kcp/reader/IReaderController$StartPagePrompt$Type;

    invoke-virtual {v0}, [Lcom/amazon/kcp/reader/IReaderController$StartPagePrompt$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/reader/IReaderController$StartPagePrompt$Type;

    return-object v0
.end method
