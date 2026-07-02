.class final Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
.super Ljava/lang/Object;
.source "POJOPropertyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final explicitName:Ljava/lang/String;

.field public final isMarkedIgnored:Z

.field public final isVisible:Z

.field public final next:Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Ljava/lang/String;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<",
            "TT;>;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    .line 563
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    const/4 p1, 0x0

    if-nez p3, :cond_0

    .line 566
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    goto :goto_0

    .line 568
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_1

    move-object p3, p1

    :cond_1
    iput-object p3, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    .line 570
    :goto_0
    iput-boolean p4, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isVisible:Z

    .line 571
    iput-boolean p5, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isMarkedIgnored:Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .locals 0

    .line 550
    invoke-direct {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->append(Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object p0

    return-object p0
.end method

.method private append(Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<",
            "TT;>;)",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<",
            "TT;>;"
        }
    .end annotation

    .line 615
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-nez v0, :cond_0

    .line 616
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withNext(Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object p1

    return-object p1

    .line 618
    :cond_0
    invoke-direct {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->append(Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withNext(Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 647
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v1, :cond_0

    .line 648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public trimByVisibility()Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<",
            "TT;>;"
        }
    .end annotation

    .line 623
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-nez v0, :cond_0

    return-object p0

    .line 626
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->trimByVisibility()Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    .line 627
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 628
    iget-object v1, v0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 629
    invoke-virtual {p0, v2}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withNext(Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    return-object v0

    .line 632
    :cond_1
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withNext(Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    return-object v0

    .line 634
    :cond_2
    iget-object v1, v0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    if-eqz v1, :cond_3

    return-object v0

    .line 638
    :cond_3
    iget-boolean v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isVisible:Z

    iget-boolean v3, v0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isVisible:Z

    if-ne v1, v3, :cond_4

    .line 639
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withNext(Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    return-object v0

    :cond_4
    if-eqz v1, :cond_5

    .line 641
    invoke-virtual {p0, v2}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withNext(Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    :cond_5
    return-object v0
.end method

.method public withNext(Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<",
            "TT;>;)",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<",
            "TT;>;"
        }
    .end annotation

    .line 583
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 586
    :cond_0
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isVisible:Z

    iget-boolean v6, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isMarkedIgnored:Z

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;-><init>(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public withValue(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<",
            "TT;>;"
        }
    .end annotation

    .line 576
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 579
    :cond_0
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isVisible:Z

    iget-boolean v6, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isMarkedIgnored:Z

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;-><init>(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public withoutIgnored()Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<",
            "TT;>;"
        }
    .end annotation

    .line 591
    iget-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isMarkedIgnored:Z

    if-eqz v0, :cond_1

    .line 592
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withoutIgnored()Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    :goto_0
    return-object v0

    .line 594
    :cond_1
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v0, :cond_2

    .line 595
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withoutIgnored()Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    .line 596
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eq v0, v1, :cond_2

    .line 597
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withNext(Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    return-object v0

    :cond_2
    return-object p0
.end method

.method public withoutNonVisible()Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<",
            "TT;>;"
        }
    .end annotation

    .line 605
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withoutNonVisible()Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    .line 606
    :goto_0
    iget-boolean v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isVisible:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withNext(Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    :cond_1
    return-object v0
.end method
