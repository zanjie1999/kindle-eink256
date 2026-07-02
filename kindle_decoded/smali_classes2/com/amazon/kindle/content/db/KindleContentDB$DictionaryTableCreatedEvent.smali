.class public Lcom/amazon/kindle/content/db/KindleContentDB$DictionaryTableCreatedEvent;
.super Ljava/lang/Object;
.source "KindleContentDB.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/content/db/KindleContentDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DictionaryTableCreatedEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/content/db/KindleContentDB$DictionaryTableCreatedEvent$EventType;
    }
.end annotation


# instance fields
.field private type:Lcom/amazon/kindle/content/db/KindleContentDB$DictionaryTableCreatedEvent$EventType;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/content/db/KindleContentDB$DictionaryTableCreatedEvent$EventType;)V
    .locals 0

    .line 2961
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2962
    iput-object p1, p0, Lcom/amazon/kindle/content/db/KindleContentDB$DictionaryTableCreatedEvent;->type:Lcom/amazon/kindle/content/db/KindleContentDB$DictionaryTableCreatedEvent$EventType;

    return-void
.end method


# virtual methods
.method public getType()Lcom/amazon/kindle/content/db/KindleContentDB$DictionaryTableCreatedEvent$EventType;
    .locals 1

    .line 2973
    iget-object v0, p0, Lcom/amazon/kindle/content/db/KindleContentDB$DictionaryTableCreatedEvent;->type:Lcom/amazon/kindle/content/db/KindleContentDB$DictionaryTableCreatedEvent$EventType;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
