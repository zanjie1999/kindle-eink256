.class public final enum Lcom/audible/hushpuppy/controller/JitTutorialProvider$TriggerEvent;
.super Ljava/lang/Enum;
.source "JitTutorialProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/controller/JitTutorialProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "TriggerEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/controller/JitTutorialProvider$TriggerEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/controller/JitTutorialProvider$TriggerEvent;

.field public static final enum AUDIOBOOK_PURCHASED:Lcom/audible/hushpuppy/controller/JitTutorialProvider$TriggerEvent;


# instance fields
.field private eventName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 130
    new-instance v0, Lcom/audible/hushpuppy/controller/JitTutorialProvider$TriggerEvent;

    const/4 v1, 0x0

    const-string v2, "AUDIOBOOK_PURCHASED"

    const-string v3, "AudiobookPurchased"

    invoke-direct {v0, v2, v1, v3}, Lcom/audible/hushpuppy/controller/JitTutorialProvider$TriggerEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/hushpuppy/controller/JitTutorialProvider$TriggerEvent;->AUDIOBOOK_PURCHASED:Lcom/audible/hushpuppy/controller/JitTutorialProvider$TriggerEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/audible/hushpuppy/controller/JitTutorialProvider$TriggerEvent;

    aput-object v0, v2, v1

    .line 128
    sput-object v2, Lcom/audible/hushpuppy/controller/JitTutorialProvider$TriggerEvent;->$VALUES:[Lcom/audible/hushpuppy/controller/JitTutorialProvider$TriggerEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 135
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 136
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/JitTutorialProvider$TriggerEvent;->eventName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/controller/JitTutorialProvider$TriggerEvent;
    .locals 1

    .line 128
    const-class v0, Lcom/audible/hushpuppy/controller/JitTutorialProvider$TriggerEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/controller/JitTutorialProvider$TriggerEvent;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/controller/JitTutorialProvider$TriggerEvent;
    .locals 1

    .line 128
    sget-object v0, Lcom/audible/hushpuppy/controller/JitTutorialProvider$TriggerEvent;->$VALUES:[Lcom/audible/hushpuppy/controller/JitTutorialProvider$TriggerEvent;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/controller/JitTutorialProvider$TriggerEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/controller/JitTutorialProvider$TriggerEvent;

    return-object v0
.end method


# virtual methods
.method protected getEventString()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/JitTutorialProvider$TriggerEvent;->eventName:Ljava/lang/String;

    return-object v0
.end method
