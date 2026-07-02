.class public final enum Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;
.super Ljava/lang/Enum;
.source "IChromeClickHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/helpers/IChromeClickHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;

.field public static final enum OPEN_ABOUT_THIS_BOOK:Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;

.field public static final enum OPEN_BEFORE_YOU_GO:Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;

.field public static final enum OPEN_MENTIONED_IN_THIS_BOOK:Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;

    new-instance v1, Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;

    const/4 v2, 0x0

    const-string v3, "OPEN_ABOUT_THIS_BOOK"

    invoke-direct {v1, v3, v2}, Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;->OPEN_ABOUT_THIS_BOOK:Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;

    const/4 v2, 0x1

    const-string v3, "OPEN_MENTIONED_IN_THIS_BOOK"

    invoke-direct {v1, v3, v2}, Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;->OPEN_MENTIONED_IN_THIS_BOOK:Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;

    const/4 v2, 0x2

    const-string v3, "OPEN_BEFORE_YOU_GO"

    invoke-direct {v1, v3, v2}, Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;->OPEN_BEFORE_YOU_GO:Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;->$VALUES:[Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;
    .locals 1

    const-class v0, Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;
    .locals 1

    sget-object v0, Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;->$VALUES:[Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;

    invoke-virtual {v0}, [Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;

    return-object v0
.end method
