.class public final enum Lcom/amazon/kindle/event/UserEvent$EventType;
.super Ljava/lang/Enum;
.source "UserEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/event/UserEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/event/UserEvent$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/event/UserEvent$EventType;

.field public static final enum FIRST_REGISTRATION:Lcom/amazon/kindle/event/UserEvent$EventType;

.field public static final enum FIRST_REGISTRATION_FOR_VERSION:Lcom/amazon/kindle/event/UserEvent$EventType;

.field public static final enum FIRST_START:Lcom/amazon/kindle/event/UserEvent$EventType;

.field public static final enum FIRST_START_FOR_VERSION:Lcom/amazon/kindle/event/UserEvent$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 27
    new-instance v0, Lcom/amazon/kindle/event/UserEvent$EventType;

    const/4 v1, 0x0

    const-string v2, "FIRST_START"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/event/UserEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/event/UserEvent$EventType;->FIRST_START:Lcom/amazon/kindle/event/UserEvent$EventType;

    .line 37
    new-instance v0, Lcom/amazon/kindle/event/UserEvent$EventType;

    const/4 v2, 0x1

    const-string v3, "FIRST_START_FOR_VERSION"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/event/UserEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/event/UserEvent$EventType;->FIRST_START_FOR_VERSION:Lcom/amazon/kindle/event/UserEvent$EventType;

    .line 41
    new-instance v0, Lcom/amazon/kindle/event/UserEvent$EventType;

    const/4 v3, 0x2

    const-string v4, "FIRST_REGISTRATION"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/event/UserEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/event/UserEvent$EventType;->FIRST_REGISTRATION:Lcom/amazon/kindle/event/UserEvent$EventType;

    .line 48
    new-instance v0, Lcom/amazon/kindle/event/UserEvent$EventType;

    const/4 v4, 0x3

    const-string v5, "FIRST_REGISTRATION_FOR_VERSION"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/event/UserEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/event/UserEvent$EventType;->FIRST_REGISTRATION_FOR_VERSION:Lcom/amazon/kindle/event/UserEvent$EventType;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/kindle/event/UserEvent$EventType;

    .line 23
    sget-object v6, Lcom/amazon/kindle/event/UserEvent$EventType;->FIRST_START:Lcom/amazon/kindle/event/UserEvent$EventType;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/kindle/event/UserEvent$EventType;->FIRST_START_FOR_VERSION:Lcom/amazon/kindle/event/UserEvent$EventType;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/kindle/event/UserEvent$EventType;->FIRST_REGISTRATION:Lcom/amazon/kindle/event/UserEvent$EventType;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/kindle/event/UserEvent$EventType;->$VALUES:[Lcom/amazon/kindle/event/UserEvent$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/event/UserEvent$EventType;
    .locals 1

    .line 23
    const-class v0, Lcom/amazon/kindle/event/UserEvent$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/event/UserEvent$EventType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/event/UserEvent$EventType;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/kindle/event/UserEvent$EventType;->$VALUES:[Lcom/amazon/kindle/event/UserEvent$EventType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/event/UserEvent$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/event/UserEvent$EventType;

    return-object v0
.end method
