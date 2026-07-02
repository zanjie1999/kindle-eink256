.class public final Lcom/audible/pfm/event/PfmEnabledAndUpdatedEvent;
.super Ljava/lang/Object;
.source "PfmEnabledAndUpdatedEvent.java"


# instance fields
.field private final pfm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "pfm can\'t be null."

    .line 24
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/audible/pfm/event/PfmEnabledAndUpdatedEvent;->pfm:Ljava/lang/String;

    return-void
.end method
