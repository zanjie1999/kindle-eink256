.class final Lcom/amazon/discovery/Dependency;
.super Ljava/lang/Object;
.source "Dependency.java"


# instance fields
.field private final requestedClass:Ljava/lang/Class;

.field private final type:Lcom/amazon/discovery/DependencyType;


# direct methods
.method constructor <init>(Lcom/amazon/discovery/DependencyType;Ljava/lang/Class;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazon/discovery/Dependency;->type:Lcom/amazon/discovery/DependencyType;

    .line 27
    iput-object p2, p0, Lcom/amazon/discovery/Dependency;->requestedClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method getRequestedClass()Ljava/lang/Class;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/discovery/Dependency;->requestedClass:Ljava/lang/Class;

    return-object v0
.end method

.method getType()Lcom/amazon/discovery/DependencyType;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/discovery/Dependency;->type:Lcom/amazon/discovery/DependencyType;

    return-object v0
.end method
