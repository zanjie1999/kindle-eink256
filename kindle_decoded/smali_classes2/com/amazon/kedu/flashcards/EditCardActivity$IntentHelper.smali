.class public Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;
.super Ljava/lang/Object;
.source "EditCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/EditCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentHelper"
.end annotation


# static fields
.field private static final DEFAULT_FOCUS_SIDE:Lcom/amazon/kedu/flashcards/utils/Side;

.field private static final DEFAULT_MODE:Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;


# instance fields
.field private cardId:Ljava/lang/String;

.field private deckId:Ljava/lang/String;

.field private focusSide:Lcom/amazon/kedu/flashcards/utils/Side;

.field private mode:Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 500
    sget-object v0, Lcom/amazon/kedu/flashcards/utils/Side;->FRONT:Lcom/amazon/kedu/flashcards/utils/Side;

    sput-object v0, Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;->DEFAULT_FOCUS_SIDE:Lcom/amazon/kedu/flashcards/utils/Side;

    .line 501
    sget-object v0, Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;->EDIT_CARD:Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

    sput-object v0, Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;->DEFAULT_MODE:Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "deckID"

    .line 510
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;->deckId:Ljava/lang/String;

    const-string v0, "cardID"

    .line 511
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;->cardId:Ljava/lang/String;

    const-string v0, "focusSide"

    .line 512
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/flashcards/utils/Side;

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;->focusSide:Lcom/amazon/kedu/flashcards/utils/Side;

    const-string v0, "mode"

    .line 513
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;->mode:Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

    return-void
.end method

.method static synthetic access$1000(Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;)Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;
    .locals 0

    .line 493
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;->mode:Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;)Ljava/lang/String;
    .locals 0

    .line 493
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;->deckId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;)Ljava/lang/String;
    .locals 0

    .line 493
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;->cardId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kedu/flashcards/utils/Side;Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;)V
    .locals 0

    .line 493
    invoke-static {p0, p1, p2, p3, p4}, Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;->saveToBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kedu/flashcards/utils/Side;Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;)V

    return-void
.end method

.method static synthetic access$900(Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;)Lcom/amazon/kedu/flashcards/utils/Side;
    .locals 0

    .line 493
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;->focusSide:Lcom/amazon/kedu/flashcards/utils/Side;

    return-object p0
.end method

.method public static getIntent(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 518
    invoke-static {p0, p1, v0, p2}, Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;->getIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;)Landroid/content/Intent;
    .locals 1

    .line 533
    sget-object v0, Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;->DEFAULT_FOCUS_SIDE:Lcom/amazon/kedu/flashcards/utils/Side;

    invoke-static {p0, p1, p2, v0, p3}, Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;->getIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kedu/flashcards/utils/Side;Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kedu/flashcards/utils/Side;)Landroid/content/Intent;
    .locals 1

    .line 528
    sget-object v0, Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;->DEFAULT_MODE:Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;->getIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kedu/flashcards/utils/Side;Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kedu/flashcards/utils/Side;Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;)Landroid/content/Intent;
    .locals 2

    .line 538
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kedu/flashcards/EditCardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 539
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 540
    invoke-static {p0, p1, p2, p3, p4}, Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;->saveToBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kedu/flashcards/utils/Side;Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;)V

    .line 541
    invoke-virtual {v0, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method private static saveToBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kedu/flashcards/utils/Side;Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;)V
    .locals 1

    const-string v0, "deckID"

    .line 548
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "cardID"

    .line 549
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "focusSide"

    .line 550
    invoke-virtual {p0, p1, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "mode"

    .line 551
    invoke-virtual {p0, p1, p4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method
