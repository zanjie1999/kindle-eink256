.class public Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel$IncompleteDeckJSONException;
.super Ljava/lang/Exception;
.source "WhispersyncQuizDeckModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IncompleteDeckJSONException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;


# direct methods
.method public constructor <init>(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Ljava/lang/String;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel$IncompleteDeckJSONException;->this$0:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    .line 203
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
