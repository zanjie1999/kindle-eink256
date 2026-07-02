.class public Lcom/amazon/kindle/rendering/KRIFWordPageElement;
.super Lcom/amazon/kindle/rendering/KRIFPageElement;
.source "KRIFWordPageElement.java"

# interfaces
.implements Lcom/amazon/android/docviewer/IWordPageElement;


# instance fields
.field private word:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;[Landroid/graphics/RectF;)V
    .locals 1

    const/4 v0, 0x1

    .line 17
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/amazon/kindle/rendering/KRIFPageElement;-><init>(III[Landroid/graphics/RectF;)V

    .line 18
    iput-object p3, p0, Lcom/amazon/kindle/rendering/KRIFWordPageElement;->word:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFWordPageElement;->word:Ljava/lang/String;

    return-object v0
.end method
