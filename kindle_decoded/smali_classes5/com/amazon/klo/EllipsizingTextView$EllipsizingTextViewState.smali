.class public Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;
.super Ljava/lang/Object;
.source "EllipsizingTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/klo/EllipsizingTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EllipsizingTextViewState"
.end annotation


# instance fields
.field private ellipsizedText:Ljava/lang/String;

.field private fullText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEllipsizedText()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;->ellipsizedText:Ljava/lang/String;

    return-object v0
.end method

.method public getFullText()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;->fullText:Ljava/lang/String;

    return-object v0
.end method

.method public setEllipsizedText(Ljava/lang/String;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;->ellipsizedText:Ljava/lang/String;

    return-void
.end method

.method public setFullText(Ljava/lang/String;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;->fullText:Ljava/lang/String;

    return-void
.end method
