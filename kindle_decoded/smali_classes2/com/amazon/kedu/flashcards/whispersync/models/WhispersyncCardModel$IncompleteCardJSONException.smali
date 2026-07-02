.class public Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel$IncompleteCardJSONException;
.super Ljava/lang/Exception;
.source "WhispersyncCardModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IncompleteCardJSONException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;


# direct methods
.method public constructor <init>(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;Ljava/lang/String;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel$IncompleteCardJSONException;->this$0:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    .line 211
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
