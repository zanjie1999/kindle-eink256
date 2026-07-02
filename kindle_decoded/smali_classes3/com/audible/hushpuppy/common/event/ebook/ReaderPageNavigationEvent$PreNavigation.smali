.class public final enum Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PreNavigation;
.super Ljava/lang/Enum;
.source "ReaderPageNavigationEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PreNavigation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PreNavigation;

.field public static final enum INSTANCE:Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PreNavigation;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PreNavigation;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PreNavigation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PreNavigation;->INSTANCE:Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PreNavigation;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PreNavigation;

    aput-object v0, v2, v1

    .line 19
    sput-object v2, Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PreNavigation;->$VALUES:[Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PreNavigation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PreNavigation;
    .locals 1

    .line 19
    const-class v0, Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PreNavigation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PreNavigation;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PreNavigation;
    .locals 1

    .line 19
    sget-object v0, Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PreNavigation;->$VALUES:[Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PreNavigation;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PreNavigation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PreNavigation;

    return-object v0
.end method
