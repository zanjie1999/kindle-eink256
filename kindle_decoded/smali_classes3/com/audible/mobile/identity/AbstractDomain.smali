.class abstract Lcom/audible/mobile/identity/AbstractDomain;
.super Ljava/lang/Object;
.source "AbstractDomain.java"


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/audible/mobile/identity/TopLevelDomain;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "The domain param cannot be null"

    .line 16
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The topLevelDomain param cannot be null"

    .line 17
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/audible/mobile/identity/TopLevelDomain;->getTopLevelDomain()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/identity/AbstractDomain;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/audible/mobile/identity/AbstractDomain;->value:Ljava/lang/String;

    return-object v0
.end method
