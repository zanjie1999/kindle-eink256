.class public Lcom/amazon/kedu/flashcards/loadable/TextLoader$LoadedText;
.super Ljava/lang/Object;
.source "TextLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/loadable/TextLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadedText"
.end annotation


# instance fields
.field private ellipsized:Z

.field private lineCount:I

.field private text:Ljava/lang/CharSequence;

.field private textSize:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IIZ)V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/loadable/TextLoader$LoadedText;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {p0, p2}, Lcom/amazon/kedu/flashcards/loadable/TextLoader$LoadedText;->setTextSize(I)V

    .line 128
    invoke-virtual {p0, p3}, Lcom/amazon/kedu/flashcards/loadable/TextLoader$LoadedText;->setLineCount(I)V

    .line 129
    invoke-virtual {p0, p4}, Lcom/amazon/kedu/flashcards/loadable/TextLoader$LoadedText;->setEllipsized(Z)V

    return-void
.end method


# virtual methods
.method public getLineCount()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader$LoadedText;->lineCount:I

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader$LoadedText;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextSize()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader$LoadedText;->textSize:I

    return v0
.end method

.method public isEllipsized()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader$LoadedText;->ellipsized:Z

    return v0
.end method

.method public setEllipsized(Z)V
    .locals 0

    .line 169
    iput-boolean p1, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader$LoadedText;->ellipsized:Z

    return-void
.end method

.method public setLineCount(I)V
    .locals 0

    .line 159
    iput p1, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader$LoadedText;->lineCount:I

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader$LoadedText;->text:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    .line 154
    iput p1, p0, Lcom/amazon/kedu/flashcards/loadable/TextLoader$LoadedText;->textSize:I

    return-void
.end method
