.class public interface abstract Lcom/amazon/kindle/search/IKindleWordTokenIterator;
.super Ljava/lang/Object;
.source "IKindleWordTokenIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;
    }
.end annotation


# static fields
.field public static final emptyWordToken:Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->emptyWordToken:Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract first()Z
.end method

.method public abstract getTextInRange(II)Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;
.end method

.method public abstract getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;
.end method

.method public abstract gotoPosition(I)V
.end method

.method public abstract next()Z
.end method

.method public abstract nextNWords(IC)Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;
.end method

.method public abstract previous()Z
.end method
