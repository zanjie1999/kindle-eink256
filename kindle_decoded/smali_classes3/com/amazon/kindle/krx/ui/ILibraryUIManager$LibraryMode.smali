.class public final enum Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;
.super Ljava/lang/Enum;
.source "ILibraryUIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/ui/ILibraryUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LibraryMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;

.field public static final enum BOOKS:Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;

.field public static final enum FULL:Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;

.field public static final enum NEWSSTAND:Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 40
    new-instance v0, Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;

    const/4 v1, 0x0

    const-string v2, "FULL"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;->FULL:Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;

    .line 44
    new-instance v0, Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;

    const/4 v2, 0x1

    const-string v3, "BOOKS"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;->BOOKS:Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;

    .line 48
    new-instance v0, Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;

    const/4 v3, 0x2

    const-string v4, "NEWSSTAND"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;->NEWSSTAND:Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;

    .line 35
    sget-object v5, Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;->FULL:Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;->BOOKS:Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;->$VALUES:[Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;
    .locals 1

    .line 35
    const-class v0, Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;->$VALUES:[Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;

    return-object v0
.end method
