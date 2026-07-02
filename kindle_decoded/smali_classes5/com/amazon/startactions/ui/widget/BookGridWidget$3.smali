.class synthetic Lcom/amazon/startactions/ui/widget/BookGridWidget$3;
.super Ljava/lang/Object;
.source "BookGridWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/ui/widget/BookGridWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$readingactions$helpers$purchase$PurchaseMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 605
    invoke-static {}, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->values()[Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$3;->$SwitchMap$com$amazon$readingactions$helpers$purchase$PurchaseMode:[I

    :try_start_0
    sget-object v1, Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;->READ:Lcom/amazon/readingactions/helpers/purchase/PurchaseMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
