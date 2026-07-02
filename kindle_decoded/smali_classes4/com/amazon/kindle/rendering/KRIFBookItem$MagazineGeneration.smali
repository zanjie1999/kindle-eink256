.class final enum Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;
.super Ljava/lang/Enum;
.source "KRIFBookItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/rendering/KRIFBookItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MagazineGeneration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;

.field public static final enum LEGACY:Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;

.field public static final enum NONE:Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;

.field public static final enum PERIODICALS_V2:Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 87
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;

    const/4 v1, 0x0

    const-string v2, "LEGACY"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;->LEGACY:Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;

    .line 88
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;

    const/4 v2, 0x1

    const-string v3, "PERIODICALS_V2"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;->PERIODICALS_V2:Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;

    .line 89
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;

    const/4 v3, 0x2

    const-string v4, "NONE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;->NONE:Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;

    .line 86
    sget-object v5, Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;->LEGACY:Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;->PERIODICALS_V2:Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;->$VALUES:[Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;
    .locals 1

    .line 86
    const-class v0, Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;
    .locals 1

    .line 86
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;->$VALUES:[Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;

    invoke-virtual {v0}, [Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;

    return-object v0
.end method
