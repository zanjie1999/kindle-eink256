.class public final enum Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;
.super Ljava/lang/Enum;
.source "SavedTouchEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TouchEventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;

.field public static final enum DOUBLE_TAP:Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;

.field public static final enum SINGLE_TAP:Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;

.field public static final enum SWIPE:Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 5
    new-instance v0, Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;

    const/4 v1, 0x0

    const-string v2, "SINGLE_TAP"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;->SINGLE_TAP:Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;

    new-instance v0, Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;

    const/4 v2, 0x1

    const-string v3, "SWIPE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;->SWIPE:Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;

    new-instance v0, Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;

    const/4 v3, 0x2

    const-string v4, "DOUBLE_TAP"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;->DOUBLE_TAP:Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;

    .line 4
    sget-object v5, Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;->SINGLE_TAP:Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;->SWIPE:Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;->$VALUES:[Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;
    .locals 1

    .line 4
    const-class v0, Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;
    .locals 1

    .line 4
    sget-object v0, Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;->$VALUES:[Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;

    return-object v0
.end method
