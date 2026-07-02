.class Lcom/amazon/kedu/flashcards/FlashcardsApp$SingletonHolder;
.super Ljava/lang/Object;
.source "FlashcardsApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/FlashcardsApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kedu/flashcards/FlashcardsApp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 265
    new-instance v0, Lcom/amazon/kedu/flashcards/FlashcardsApp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kedu/flashcards/FlashcardsApp;-><init>(Lcom/amazon/kedu/flashcards/FlashcardsApp$1;)V

    sput-object v0, Lcom/amazon/kedu/flashcards/FlashcardsApp$SingletonHolder;->INSTANCE:Lcom/amazon/kedu/flashcards/FlashcardsApp;

    return-void
.end method
