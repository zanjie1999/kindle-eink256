.class synthetic Lcom/amazon/android/widget/PagingButtonWidget$8;
.super Ljava/lang/Object;
.source "PagingButtonWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/widget/PagingButtonWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$android$widget$WidgetAnchorPosition$Location:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 351
    invoke-static {}, Lcom/amazon/android/widget/WidgetAnchorPosition$Location;->values()[Lcom/amazon/android/widget/WidgetAnchorPosition$Location;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/android/widget/PagingButtonWidget$8;->$SwitchMap$com$amazon$android$widget$WidgetAnchorPosition$Location:[I

    :try_start_0
    sget-object v1, Lcom/amazon/android/widget/WidgetAnchorPosition$Location;->BOTTOM:Lcom/amazon/android/widget/WidgetAnchorPosition$Location;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/android/widget/PagingButtonWidget$8;->$SwitchMap$com$amazon$android$widget$WidgetAnchorPosition$Location:[I

    sget-object v1, Lcom/amazon/android/widget/WidgetAnchorPosition$Location;->TOP:Lcom/amazon/android/widget/WidgetAnchorPosition$Location;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/amazon/android/widget/PagingButtonWidget$8;->$SwitchMap$com$amazon$android$widget$WidgetAnchorPosition$Location:[I

    sget-object v1, Lcom/amazon/android/widget/WidgetAnchorPosition$Location;->NONE:Lcom/amazon/android/widget/WidgetAnchorPosition$Location;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
