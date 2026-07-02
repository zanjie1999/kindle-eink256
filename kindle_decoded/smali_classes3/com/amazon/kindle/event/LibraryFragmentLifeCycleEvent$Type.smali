.class public final enum Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;
.super Ljava/lang/Enum;
.source "LibraryFragmentLifeCycleEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;

.field public static final enum RESUME:Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;

.field public static final enum STOP:Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 16
    new-instance v0, Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;

    const/4 v1, 0x0

    const-string v2, "RESUME"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;->RESUME:Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;

    new-instance v0, Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;

    const/4 v2, 0x1

    const-string v3, "STOP"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;->STOP:Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;

    .line 15
    sget-object v4, Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;->RESUME:Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;->$VALUES:[Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;
    .locals 1

    .line 15
    const-class v0, Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;
    .locals 1

    .line 15
    sget-object v0, Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;->$VALUES:[Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;

    invoke-virtual {v0}, [Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;

    return-object v0
.end method
