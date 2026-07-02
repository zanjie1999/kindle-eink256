.class synthetic Lcom/amazon/android/docviewer/pdf/PdfObjectSelector$1;
.super Ljava/lang/Object;
.source "PdfObjectSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/pdf/PdfObjectSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$android$docviewer$IObjectSelector$UserAction:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 125
    invoke-static {}, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;->values()[Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/android/docviewer/pdf/PdfObjectSelector$1;->$SwitchMap$com$amazon$android$docviewer$IObjectSelector$UserAction:[I

    :try_start_0
    sget-object v1, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;->SINGLE_TAP:Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/android/docviewer/pdf/PdfObjectSelector$1;->$SwitchMap$com$amazon$android$docviewer$IObjectSelector$UserAction:[I

    sget-object v1, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;->DOUBLE_TAP:Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/amazon/android/docviewer/pdf/PdfObjectSelector$1;->$SwitchMap$com$amazon$android$docviewer$IObjectSelector$UserAction:[I

    sget-object v1, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;->TAP_AND_HOLD:Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/amazon/android/docviewer/pdf/PdfObjectSelector$1;->$SwitchMap$com$amazon$android$docviewer$IObjectSelector$UserAction:[I

    sget-object v1, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;->DEFAULT:Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
