.class public final enum Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PageChange;
.super Ljava/lang/Enum;
.source "ReaderPageNavigationEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PageChange;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PageChange;

.field public static final enum INSTANCE:Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PageChange;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    new-instance v0, Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PageChange;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PageChange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PageChange;->INSTANCE:Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PageChange;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PageChange;

    aput-object v0, v2, v1

    .line 44
    sput-object v2, Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PageChange;->$VALUES:[Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PageChange;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PageChange;
    .locals 1

    .line 44
    const-class v0, Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PageChange;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PageChange;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PageChange;
    .locals 1

    .line 44
    sget-object v0, Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PageChange;->$VALUES:[Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PageChange;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PageChange;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PageChange;

    return-object v0
.end method
