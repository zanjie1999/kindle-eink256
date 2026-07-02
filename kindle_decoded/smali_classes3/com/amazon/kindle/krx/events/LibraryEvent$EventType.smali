.class public final enum Lcom/amazon/kindle/krx/events/LibraryEvent$EventType;
.super Ljava/lang/Enum;
.source "LibraryEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/events/LibraryEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/events/LibraryEvent$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/events/LibraryEvent$EventType;

.field public static final enum LIBRARY_VIEW_SHOWN:Lcom/amazon/kindle/krx/events/LibraryEvent$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Lcom/amazon/kindle/krx/events/LibraryEvent$EventType;

    const/4 v1, 0x0

    const-string v2, "LIBRARY_VIEW_SHOWN"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/events/LibraryEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/events/LibraryEvent$EventType;->LIBRARY_VIEW_SHOWN:Lcom/amazon/kindle/krx/events/LibraryEvent$EventType;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/amazon/kindle/krx/events/LibraryEvent$EventType;

    aput-object v0, v2, v1

    .line 15
    sput-object v2, Lcom/amazon/kindle/krx/events/LibraryEvent$EventType;->$VALUES:[Lcom/amazon/kindle/krx/events/LibraryEvent$EventType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/events/LibraryEvent$EventType;
    .locals 1

    .line 15
    const-class v0, Lcom/amazon/kindle/krx/events/LibraryEvent$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/events/LibraryEvent$EventType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/events/LibraryEvent$EventType;
    .locals 1

    .line 15
    sget-object v0, Lcom/amazon/kindle/krx/events/LibraryEvent$EventType;->$VALUES:[Lcom/amazon/kindle/krx/events/LibraryEvent$EventType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/events/LibraryEvent$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/events/LibraryEvent$EventType;

    return-object v0
.end method
