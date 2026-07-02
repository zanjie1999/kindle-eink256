.class public Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent;
.super Ljava/lang/Object;
.source "LooperEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent$EventType;
    }
.end annotation


# instance fields
.field private type:Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent$EventType;

.field private word:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

.field private wordCount:I


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent$EventType;Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent;->type:Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent$EventType;

    .line 26
    iput-object p2, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent;->word:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent$EventType;Lcom/amazon/kindle/speedreading/doubletime/framework/Word;I)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent;->type:Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent$EventType;

    .line 32
    iput-object p2, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent;->word:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    .line 33
    iput p3, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent;->wordCount:I

    return-void
.end method


# virtual methods
.method public getType()Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent$EventType;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent;->type:Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent$EventType;

    return-object v0
.end method

.method public getWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent;->word:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    return-object v0
.end method

.method public getWordCount()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/LooperEvent;->wordCount:I

    return v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
