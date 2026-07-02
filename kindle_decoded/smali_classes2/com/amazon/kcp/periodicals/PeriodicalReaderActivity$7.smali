.class synthetic Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$7;
.super Ljava/lang/Object;
.source "PeriodicalReaderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$android$docviewer$KindleDocColorMode$Id:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1404
    invoke-static {}, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->values()[Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$7;->$SwitchMap$com$amazon$android$docviewer$KindleDocColorMode$Id:[I

    :try_start_0
    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$7;->$SwitchMap$com$amazon$android$docviewer$KindleDocColorMode$Id:[I

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->SEPIA:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$7;->$SwitchMap$com$amazon$android$docviewer$KindleDocColorMode$Id:[I

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->GREEN:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$7;->$SwitchMap$com$amazon$android$docviewer$KindleDocColorMode$Id:[I

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
