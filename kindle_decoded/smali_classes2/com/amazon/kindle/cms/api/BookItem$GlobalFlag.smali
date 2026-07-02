.class public final enum Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;
.super Ljava/lang/Enum;
.source "BookItem.java"

# interfaces
.implements Lcom/amazon/kindle/cms/api/AbstractItem$Valuable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/cms/api/BookItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GlobalFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;",
        ">;",
        "Lcom/amazon/kindle/cms/api/AbstractItem$Valuable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;

.field public static final enum CarouselOnly:Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;

.field public static final enum CompanionAudioBookAvailable:Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;

.field public static final enum Dictionary:Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;

.field public static final enum Rental:Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;

.field public static final enum Sample:Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;

.field public static final enum Trial:Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;


# instance fields
.field private final m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 24
    new-instance v0, Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "Sample"

    invoke-direct {v0, v3, v1, v2}, Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;->Sample:Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;

    .line 26
    new-instance v0, Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;

    const/4 v3, 0x1

    const/4 v4, 0x4

    const-string v5, "Dictionary"

    invoke-direct {v0, v5, v3, v4}, Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;->Dictionary:Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;

    .line 28
    new-instance v0, Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;

    const-string v5, "CarouselOnly"

    const/16 v6, 0x8

    invoke-direct {v0, v5, v2, v6}, Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;->CarouselOnly:Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;

    .line 30
    new-instance v0, Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;

    const/4 v5, 0x3

    const-string v6, "Trial"

    const/16 v7, 0x10

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;->Trial:Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;

    .line 32
    new-instance v0, Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;

    const-string v6, "Rental"

    const/16 v7, 0x20

    invoke-direct {v0, v6, v4, v7}, Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;->Rental:Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;

    .line 34
    new-instance v0, Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;

    const/4 v6, 0x5

    const-string v7, "CompanionAudioBookAvailable"

    const/16 v8, 0x40

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;->CompanionAudioBookAvailable:Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;

    .line 21
    sget-object v8, Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;->Sample:Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;

    aput-object v8, v7, v1

    sget-object v1, Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;->Dictionary:Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;->CarouselOnly:Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;

    aput-object v1, v7, v2

    sget-object v1, Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;->Trial:Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;

    aput-object v1, v7, v5

    sget-object v1, Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;->Rental:Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;

    aput-object v1, v7, v4

    aput-object v0, v7, v6

    sput-object v7, Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;->$VALUES:[Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput p3, p0, Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;->m_value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;
    .locals 1

    .line 21
    sget-object v0, Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;->$VALUES:[Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;

    invoke-virtual {v0}, [Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;->m_value:I

    return v0
.end method
