.class public final enum Lcom/amazon/kindle/cms/api/DocItem$GlobalFlag;
.super Ljava/lang/Enum;
.source "DocItem.java"

# interfaces
.implements Lcom/amazon/kindle/cms/api/AbstractItem$Valuable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/cms/api/DocItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GlobalFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/cms/api/DocItem$GlobalFlag;",
        ">;",
        "Lcom/amazon/kindle/cms/api/AbstractItem$Valuable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/cms/api/DocItem$GlobalFlag;

.field public static final enum CarouselOnly:Lcom/amazon/kindle/cms/api/DocItem$GlobalFlag;

.field public static final enum WelcomeLetter:Lcom/amazon/kindle/cms/api/DocItem$GlobalFlag;


# instance fields
.field private final m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 22
    new-instance v0, Lcom/amazon/kindle/cms/api/DocItem$GlobalFlag;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "CarouselOnly"

    invoke-direct {v0, v3, v2, v1}, Lcom/amazon/kindle/cms/api/DocItem$GlobalFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/api/DocItem$GlobalFlag;->CarouselOnly:Lcom/amazon/kindle/cms/api/DocItem$GlobalFlag;

    .line 24
    new-instance v0, Lcom/amazon/kindle/cms/api/DocItem$GlobalFlag;

    const/4 v3, 0x1

    const-string v4, "WelcomeLetter"

    const/4 v5, 0x4

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/kindle/cms/api/DocItem$GlobalFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/api/DocItem$GlobalFlag;->WelcomeLetter:Lcom/amazon/kindle/cms/api/DocItem$GlobalFlag;

    new-array v1, v1, [Lcom/amazon/kindle/cms/api/DocItem$GlobalFlag;

    .line 19
    sget-object v4, Lcom/amazon/kindle/cms/api/DocItem$GlobalFlag;->CarouselOnly:Lcom/amazon/kindle/cms/api/DocItem$GlobalFlag;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/amazon/kindle/cms/api/DocItem$GlobalFlag;->$VALUES:[Lcom/amazon/kindle/cms/api/DocItem$GlobalFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput p3, p0, Lcom/amazon/kindle/cms/api/DocItem$GlobalFlag;->m_value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/cms/api/DocItem$GlobalFlag;
    .locals 1

    .line 19
    const-class v0, Lcom/amazon/kindle/cms/api/DocItem$GlobalFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/cms/api/DocItem$GlobalFlag;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/cms/api/DocItem$GlobalFlag;
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/kindle/cms/api/DocItem$GlobalFlag;->$VALUES:[Lcom/amazon/kindle/cms/api/DocItem$GlobalFlag;

    invoke-virtual {v0}, [Lcom/amazon/kindle/cms/api/DocItem$GlobalFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/cms/api/DocItem$GlobalFlag;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/amazon/kindle/cms/api/DocItem$GlobalFlag;->m_value:I

    return v0
.end method
