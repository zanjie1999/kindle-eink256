.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;
.super Ljava/lang/Object;
.source "BeanProperty.java"

# interfaces
.implements Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Std"
.end annotation


# instance fields
.field protected final _contextAnnotations:Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;

.field protected final _member:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;

.field protected final _name:Ljava/lang/String;

.field protected final _type:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;->_name:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;->_type:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    .line 90
    iput-object p4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;->_member:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;

    .line 91
    iput-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;->_contextAnnotations:Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;

    return-void
.end method


# virtual methods
.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;->_member:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1
.end method

.method public getContextAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;->_contextAnnotations:Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;->get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getMember()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;->_member:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;->_type:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public withType(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;
    .locals 4

    .line 95
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;->_name:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;->_contextAnnotations:Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;

    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;->_member:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;)V

    return-object v0
.end method
