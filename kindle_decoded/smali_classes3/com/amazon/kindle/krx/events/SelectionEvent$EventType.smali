.class public final enum Lcom/amazon/kindle/krx/events/SelectionEvent$EventType;
.super Ljava/lang/Enum;
.source "SelectionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/events/SelectionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/events/SelectionEvent$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/events/SelectionEvent$EventType;

.field public static final enum OPTIONS_HIDDEN:Lcom/amazon/kindle/krx/events/SelectionEvent$EventType;

.field public static final enum OPTIONS_SHOWN:Lcom/amazon/kindle/krx/events/SelectionEvent$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 16
    new-instance v0, Lcom/amazon/kindle/krx/events/SelectionEvent$EventType;

    const/4 v1, 0x0

    const-string v2, "OPTIONS_SHOWN"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/events/SelectionEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/events/SelectionEvent$EventType;->OPTIONS_SHOWN:Lcom/amazon/kindle/krx/events/SelectionEvent$EventType;

    .line 17
    new-instance v0, Lcom/amazon/kindle/krx/events/SelectionEvent$EventType;

    const/4 v2, 0x1

    const-string v3, "OPTIONS_HIDDEN"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/events/SelectionEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/events/SelectionEvent$EventType;->OPTIONS_HIDDEN:Lcom/amazon/kindle/krx/events/SelectionEvent$EventType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kindle/krx/events/SelectionEvent$EventType;

    .line 14
    sget-object v4, Lcom/amazon/kindle/krx/events/SelectionEvent$EventType;->OPTIONS_SHOWN:Lcom/amazon/kindle/krx/events/SelectionEvent$EventType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kindle/krx/events/SelectionEvent$EventType;->$VALUES:[Lcom/amazon/kindle/krx/events/SelectionEvent$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/events/SelectionEvent$EventType;
    .locals 1

    .line 14
    const-class v0, Lcom/amazon/kindle/krx/events/SelectionEvent$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/events/SelectionEvent$EventType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/events/SelectionEvent$EventType;
    .locals 1

    .line 14
    sget-object v0, Lcom/amazon/kindle/krx/events/SelectionEvent$EventType;->$VALUES:[Lcom/amazon/kindle/krx/events/SelectionEvent$EventType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/events/SelectionEvent$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/events/SelectionEvent$EventType;

    return-object v0
.end method
