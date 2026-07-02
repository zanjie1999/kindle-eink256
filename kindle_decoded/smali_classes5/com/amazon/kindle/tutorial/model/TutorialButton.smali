.class public Lcom/amazon/kindle/tutorial/model/TutorialButton;
.super Ljava/lang/Object;
.source "TutorialButton.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final action:Lcom/amazon/kindle/tutorial/model/ActionConfig;

.field private final text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/tutorial/model/ActionConfig;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/model/TutorialButton;->action:Lcom/amazon/kindle/tutorial/model/ActionConfig;

    .line 23
    iput-object p2, p0, Lcom/amazon/kindle/tutorial/model/TutorialButton;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAction()Lcom/amazon/kindle/tutorial/model/ActionConfig;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/TutorialButton;->action:Lcom/amazon/kindle/tutorial/model/ActionConfig;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/TutorialButton;->text:Ljava/lang/String;

    return-object v0
.end method
