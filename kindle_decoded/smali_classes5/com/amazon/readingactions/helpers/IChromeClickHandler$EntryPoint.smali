.class public final enum Lcom/amazon/readingactions/helpers/IChromeClickHandler$EntryPoint;
.super Ljava/lang/Enum;
.source "IChromeClickHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/helpers/IChromeClickHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EntryPoint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/readingactions/helpers/IChromeClickHandler$EntryPoint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/readingactions/helpers/IChromeClickHandler$EntryPoint;

.field public static final enum OVERFLOW_MENU:Lcom/amazon/readingactions/helpers/IChromeClickHandler$EntryPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/readingactions/helpers/IChromeClickHandler$EntryPoint;

    new-instance v1, Lcom/amazon/readingactions/helpers/IChromeClickHandler$EntryPoint;

    const/4 v2, 0x0

    const-string v3, "CHROME"

    invoke-direct {v1, v3, v2}, Lcom/amazon/readingactions/helpers/IChromeClickHandler$EntryPoint;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/readingactions/helpers/IChromeClickHandler$EntryPoint;

    const/4 v2, 0x1

    const-string v3, "OVERFLOW_MENU"

    invoke-direct {v1, v3, v2}, Lcom/amazon/readingactions/helpers/IChromeClickHandler$EntryPoint;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/readingactions/helpers/IChromeClickHandler$EntryPoint;->OVERFLOW_MENU:Lcom/amazon/readingactions/helpers/IChromeClickHandler$EntryPoint;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/readingactions/helpers/IChromeClickHandler$EntryPoint;->$VALUES:[Lcom/amazon/readingactions/helpers/IChromeClickHandler$EntryPoint;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/readingactions/helpers/IChromeClickHandler$EntryPoint;
    .locals 1

    const-class v0, Lcom/amazon/readingactions/helpers/IChromeClickHandler$EntryPoint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/readingactions/helpers/IChromeClickHandler$EntryPoint;

    return-object p0
.end method

.method public static values()[Lcom/amazon/readingactions/helpers/IChromeClickHandler$EntryPoint;
    .locals 1

    sget-object v0, Lcom/amazon/readingactions/helpers/IChromeClickHandler$EntryPoint;->$VALUES:[Lcom/amazon/readingactions/helpers/IChromeClickHandler$EntryPoint;

    invoke-virtual {v0}, [Lcom/amazon/readingactions/helpers/IChromeClickHandler$EntryPoint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/readingactions/helpers/IChromeClickHandler$EntryPoint;

    return-object v0
.end method
