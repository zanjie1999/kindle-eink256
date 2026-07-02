.class public final enum Lcom/amazon/whispersync/roboguice/event/EventThread;
.super Ljava/lang/Enum;
.source "EventThread.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/roboguice/event/EventThread;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/roboguice/event/EventThread;

.field public static final enum BACKGROUND:Lcom/amazon/whispersync/roboguice/event/EventThread;

.field public static final enum CURRENT:Lcom/amazon/whispersync/roboguice/event/EventThread;

.field public static final enum UI:Lcom/amazon/whispersync/roboguice/event/EventThread;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 20
    new-instance v0, Lcom/amazon/whispersync/roboguice/event/EventThread;

    const/4 v1, 0x0

    const-string v2, "CURRENT"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whispersync/roboguice/event/EventThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/roboguice/event/EventThread;->CURRENT:Lcom/amazon/whispersync/roboguice/event/EventThread;

    .line 21
    new-instance v0, Lcom/amazon/whispersync/roboguice/event/EventThread;

    const/4 v2, 0x1

    const-string v3, "UI"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whispersync/roboguice/event/EventThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/roboguice/event/EventThread;->UI:Lcom/amazon/whispersync/roboguice/event/EventThread;

    .line 22
    new-instance v0, Lcom/amazon/whispersync/roboguice/event/EventThread;

    const/4 v3, 0x2

    const-string v4, "BACKGROUND"

    invoke-direct {v0, v4, v3}, Lcom/amazon/whispersync/roboguice/event/EventThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/roboguice/event/EventThread;->BACKGROUND:Lcom/amazon/whispersync/roboguice/event/EventThread;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/whispersync/roboguice/event/EventThread;

    .line 19
    sget-object v5, Lcom/amazon/whispersync/roboguice/event/EventThread;->CURRENT:Lcom/amazon/whispersync/roboguice/event/EventThread;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/whispersync/roboguice/event/EventThread;->UI:Lcom/amazon/whispersync/roboguice/event/EventThread;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/whispersync/roboguice/event/EventThread;->$VALUES:[Lcom/amazon/whispersync/roboguice/event/EventThread;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/roboguice/event/EventThread;
    .locals 1

    .line 19
    const-class v0, Lcom/amazon/whispersync/roboguice/event/EventThread;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/roboguice/event/EventThread;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/roboguice/event/EventThread;
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/whispersync/roboguice/event/EventThread;->$VALUES:[Lcom/amazon/whispersync/roboguice/event/EventThread;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/roboguice/event/EventThread;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/roboguice/event/EventThread;

    return-object v0
.end method
