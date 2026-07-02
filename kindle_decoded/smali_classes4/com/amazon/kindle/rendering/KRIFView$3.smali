.class synthetic Lcom/amazon/kindle/rendering/KRIFView$3;
.super Ljava/lang/Object;
.source "KRIFView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/rendering/KRIFView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$android$docviewer$KindleDocColorMode$Id:[I

.field static final synthetic $SwitchMap$com$amazon$kcp$reader$ReaderActivityLifecycleEvent$Type:[I

.field static final synthetic $SwitchMap$com$amazon$kcp$reader$ui$ReaderLayoutEvent$EventType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1516
    invoke-static {}, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;->values()[Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFView$3;->$SwitchMap$com$amazon$kcp$reader$ReaderActivityLifecycleEvent$Type:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;->RESUME:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/amazon/kindle/rendering/KRIFView$3;->$SwitchMap$com$amazon$kcp$reader$ReaderActivityLifecycleEvent$Type:[I

    sget-object v3, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;->PAUSE:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 1494
    :catch_1
    invoke-static {}, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;->values()[Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/amazon/kindle/rendering/KRIFView$3;->$SwitchMap$com$amazon$kcp$reader$ui$ReaderLayoutEvent$EventType:[I

    :try_start_2
    sget-object v3, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;->CHROME_SHOWN:Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/amazon/kindle/rendering/KRIFView$3;->$SwitchMap$com$amazon$kcp$reader$ui$ReaderLayoutEvent$EventType:[I

    sget-object v3, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;->CHROME_HIDDEN:Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 760
    :catch_3
    invoke-static {}, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->values()[Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/amazon/kindle/rendering/KRIFView$3;->$SwitchMap$com$amazon$android$docviewer$KindleDocColorMode$Id:[I

    :try_start_4
    sget-object v3, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/amazon/kindle/rendering/KRIFView$3;->$SwitchMap$com$amazon$android$docviewer$KindleDocColorMode$Id:[I

    sget-object v2, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFView$3;->$SwitchMap$com$amazon$android$docviewer$KindleDocColorMode$Id:[I

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->NIGHT:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFView$3;->$SwitchMap$com$amazon$android$docviewer$KindleDocColorMode$Id:[I

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->SEPIA:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFView$3;->$SwitchMap$com$amazon$android$docviewer$KindleDocColorMode$Id:[I

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->GREEN:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method
