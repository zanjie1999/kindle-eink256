.class synthetic Lcom/amazon/kindle/rendering/KRIFDocViewer$9;
.super Ljava/lang/Object;
.source "KRIFDocViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/rendering/KRIFDocViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$android$docviewer$DebugKindleDocViewer$ExtraSettings:[I

.field static final synthetic $SwitchMap$com$amazon$kcp$reader$ui$ReaderLayoutEvent$EventType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 3364
    invoke-static {}, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;->values()[Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFDocViewer$9;->$SwitchMap$com$amazon$android$docviewer$DebugKindleDocViewer$ExtraSettings:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;->GV_MASK_COLOR:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/amazon/kindle/rendering/KRIFDocViewer$9;->$SwitchMap$com$amazon$android$docviewer$DebugKindleDocViewer$ExtraSettings:[I

    sget-object v3, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;->GV_TRANSITION_DURATION:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lcom/amazon/kindle/rendering/KRIFDocViewer$9;->$SwitchMap$com$amazon$android$docviewer$DebugKindleDocViewer$ExtraSettings:[I

    sget-object v3, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;->FIT_TO_WIDTH:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/amazon/kindle/rendering/KRIFDocViewer$9;->$SwitchMap$com$amazon$android$docviewer$DebugKindleDocViewer$ExtraSettings:[I

    sget-object v3, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;->MULTI_COLUMN:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    aput v4, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v2, Lcom/amazon/kindle/rendering/KRIFDocViewer$9;->$SwitchMap$com$amazon$android$docviewer$DebugKindleDocViewer$ExtraSettings:[I

    sget-object v3, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;->GV_SHOW_FULL_ON_ENTER:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x5

    aput v4, v2, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v2, Lcom/amazon/kindle/rendering/KRIFDocViewer$9;->$SwitchMap$com$amazon$android$docviewer$DebugKindleDocViewer$ExtraSettings:[I

    sget-object v3, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;->GV_SHOW_FULL_ON_EXIT:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x6

    aput v4, v2, v3
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 996
    :catch_5
    invoke-static {}, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;->values()[Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/amazon/kindle/rendering/KRIFDocViewer$9;->$SwitchMap$com$amazon$kcp$reader$ui$ReaderLayoutEvent$EventType:[I

    :try_start_6
    sget-object v3, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;->CHROME_SHOWN:Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, Lcom/amazon/kindle/rendering/KRIFDocViewer$9;->$SwitchMap$com$amazon$kcp$reader$ui$ReaderLayoutEvent$EventType:[I

    sget-object v2, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;->CHROME_HIDDEN:Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
