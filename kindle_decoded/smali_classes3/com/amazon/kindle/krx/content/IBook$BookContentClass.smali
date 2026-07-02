.class public final enum Lcom/amazon/kindle/krx/content/IBook$BookContentClass;
.super Ljava/lang/Enum;
.source "IBook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/content/IBook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BookContentClass"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/content/IBook$BookContentClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

.field public static final enum CHILDREN:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

.field public static final enum COMIC:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

.field public static final enum DEFAULT:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

.field public static final enum MANGA:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

.field public static final enum TEXTBOOK:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;


# instance fields
.field private tutorialIntentUri:Ljava/lang/String;

.field private tutorialLatestVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 54
    new-instance v0, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "CHILDREN"

    const-string v4, "com.amazon.kcp.tutorial.childrensbook"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->CHILDREN:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    .line 55
    new-instance v0, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    const-string v3, "COMIC"

    const-string v4, "com.amazon.kcp.tutorial.comicbook"

    invoke-direct {v0, v3, v2, v2, v4}, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->COMIC:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    .line 56
    new-instance v0, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    const/4 v3, 0x2

    const-string v4, "MANGA"

    const-string v5, "com.amazon.kcp.tutorial.mangabook"

    invoke-direct {v0, v4, v3, v2, v5}, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->MANGA:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    .line 57
    new-instance v0, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    const/4 v4, 0x0

    const/4 v5, 0x3

    const-string v6, "TEXTBOOK"

    invoke-direct {v0, v6, v5, v1, v4}, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->TEXTBOOK:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    .line 58
    new-instance v0, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    const/4 v6, 0x4

    const-string v7, "DEFAULT"

    invoke-direct {v0, v7, v6, v1, v4}, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->DEFAULT:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    const/4 v4, 0x5

    new-array v4, v4, [Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    .line 52
    sget-object v7, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->CHILDREN:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    aput-object v7, v4, v1

    sget-object v1, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->COMIC:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    aput-object v1, v4, v2

    sget-object v1, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->MANGA:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    aput-object v1, v4, v3

    sget-object v1, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->TEXTBOOK:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    aput-object v1, v4, v5

    aput-object v0, v4, v6

    sput-object v4, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->$VALUES:[Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    iput p3, p0, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->tutorialLatestVersion:I

    .line 66
    iput-object p4, p0, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->tutorialIntentUri:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook$BookContentClass;
    .locals 1

    .line 52
    const-class v0, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/content/IBook$BookContentClass;
    .locals 1

    .line 52
    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->$VALUES:[Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    return-object v0
.end method


# virtual methods
.method public getTutorialIntentUri()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->tutorialIntentUri:Ljava/lang/String;

    return-object v0
.end method

.method public getTutorialLatestVersion()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->tutorialLatestVersion:I

    return v0
.end method

.method public hasTutorial()Z
    .locals 1

    .line 71
    iget v0, p0, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->tutorialLatestVersion:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->tutorialIntentUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
