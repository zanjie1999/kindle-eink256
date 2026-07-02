.class synthetic Lcom/amazon/kindle/mangaviewer/MangaTouchListener$2;
.super Ljava/lang/Object;
.source "MangaTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/mangaviewer/MangaTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kindle$mangaviewer$touch$SavedTouchEvent$TouchEventType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 309
    invoke-static {}, Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;->values()[Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener$2;->$SwitchMap$com$amazon$kindle$mangaviewer$touch$SavedTouchEvent$TouchEventType:[I

    :try_start_0
    sget-object v1, Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;->SINGLE_TAP:Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener$2;->$SwitchMap$com$amazon$kindle$mangaviewer$touch$SavedTouchEvent$TouchEventType:[I

    sget-object v1, Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;->DOUBLE_TAP:Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener$2;->$SwitchMap$com$amazon$kindle$mangaviewer$touch$SavedTouchEvent$TouchEventType:[I

    sget-object v1, Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;->SWIPE:Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
