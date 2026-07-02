.class final enum Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;
.super Ljava/lang/Enum;
.source "NlnTocHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/nln/pageflip/NlnTocHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TextStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;

.field public static final enum HEADER_1:Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;

.field public static final enum HEADER_2:Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;

.field public static final enum HEADER_3:Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;

.field public static final enum HEADER_4:Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;


# instance fields
.field private allCaps:Z

.field private attribId:I

.field private textSizeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 33
    new-instance v6, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;

    sget v3, Lcom/amazon/kindle/krl/R$style;->nln_bev_toc_header_font_1:I

    sget v4, Lcom/amazon/kindle/krl/R$dimen;->nln_bev_toc_header_text_size_1:I

    const-string v1, "HEADER_1"

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;->HEADER_1:Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;

    .line 34
    new-instance v0, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;

    sget v10, Lcom/amazon/kindle/krl/R$style;->nln_bev_toc_header_font_2:I

    sget v11, Lcom/amazon/kindle/krl/R$dimen;->nln_bev_toc_header_text_size_2:I

    const-string v8, "HEADER_2"

    const/4 v9, 0x1

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;->HEADER_2:Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;

    .line 35
    new-instance v0, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;

    sget v4, Lcom/amazon/kindle/krl/R$style;->nln_bev_toc_header_font_3:I

    sget v5, Lcom/amazon/kindle/krl/R$dimen;->nln_bev_toc_header_text_size_3:I

    const-string v2, "HEADER_3"

    const/4 v3, 0x2

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;->HEADER_3:Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;

    .line 36
    new-instance v0, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;

    sget v10, Lcom/amazon/kindle/krl/R$style;->nln_bev_toc_header_font_4:I

    sget v11, Lcom/amazon/kindle/krl/R$dimen;->nln_bev_toc_header_text_size_4:I

    const-string v8, "HEADER_4"

    const/4 v9, 0x3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;->HEADER_4:Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;

    .line 32
    sget-object v2, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;->HEADER_1:Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;->HEADER_2:Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;->HEADER_3:Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;->$VALUES:[Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput p3, p0, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;->attribId:I

    .line 44
    iput p4, p0, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;->textSizeId:I

    .line 45
    iput-boolean p5, p0, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;->allCaps:Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;->attribId:I

    return p0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;->textSizeId:I

    return p0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;->allCaps:Z

    return p0
.end method

.method public static getTextStyleByIndex(I)Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;
    .locals 2

    .line 56
    invoke-static {}, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;->values()[Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;

    move-result-object v0

    if-ltz p0, :cond_0

    .line 57
    array-length v1, v0

    if-lt p0, v1, :cond_1

    :cond_0
    array-length p0, v0

    add-int/lit8 p0, p0, -0x1

    :cond_1
    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;
    .locals 1

    .line 32
    const-class v0, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;
    .locals 1

    .line 32
    sget-object v0, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;->$VALUES:[Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;

    invoke-virtual {v0}, [Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;

    return-object v0
.end method
