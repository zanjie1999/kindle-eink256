.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;
.super Ljava/lang/Object;
.source "VisibilityChecker.java"

# interfaces
.implements Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;


# annotations
.annotation runtime Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect;
    creatorVisibility = .enum Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->ANY:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
    fieldVisibility = .enum Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->PUBLIC_ONLY:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
    getterVisibility = .enum Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->PUBLIC_ONLY:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
    isGetterVisibility = .enum Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->PUBLIC_ONLY:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
    setterVisibility = .enum Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->ANY:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Std"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker<",
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;",
        ">;"
    }
.end annotation


# static fields
.field protected static final DEFAULT:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;


# instance fields
.field protected final _creatorMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

.field protected final _fieldMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

.field protected final _getterMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

.field protected final _isGetterMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

.field protected final _setterMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 178
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    const-class v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    const-class v2, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect;

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect;)V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)V
    .locals 1

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->DEFAULT:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    if-ne p1, v0, :cond_0

    .line 229
    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 230
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 231
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 232
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 233
    iget-object p1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    goto :goto_0

    .line 235
    :cond_0
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 236
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 237
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 238
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 239
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)V
    .locals 0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 211
    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 212
    iput-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 213
    iput-object p4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 214
    iput-object p5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect;)V
    .locals 2

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    invoke-interface {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect;->value()[Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;

    move-result-object v0

    .line 198
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;->GETTER:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;

    invoke-static {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->hasMethod([Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect;->getterVisibility()Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    :goto_0
    iput-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 199
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;->IS_GETTER:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;

    invoke-static {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->hasMethod([Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect;->isGetterVisibility()Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-result-object v1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    :goto_1
    iput-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 200
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;->SETTER:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;

    invoke-static {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->hasMethod([Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect;->setterVisibility()Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-result-object v1

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    :goto_2
    iput-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 201
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;->CREATOR:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;

    invoke-static {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->hasMethod([Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect;->creatorVisibility()Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-result-object v1

    goto :goto_3

    :cond_3
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    :goto_3
    iput-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 202
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;->FIELD:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;

    invoke-static {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->hasMethod([Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect;->fieldVisibility()Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-result-object p1

    goto :goto_4

    :cond_4
    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    :goto_4
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    return-void
.end method

.method public static defaultInstance()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;
    .locals 1

    .line 186
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    return-object v0
.end method

.method private static hasMethod([Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;)Z
    .locals 5

    .line 402
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    if-eq v3, p1, :cond_1

    .line 403
    sget-object v4, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;->ALL:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method


# virtual methods
.method public isCreatorVisible(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;)Z
    .locals 0

    .line 351
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;->getMember()Ljava/lang/reflect/Member;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->isCreatorVisible(Ljava/lang/reflect/Member;)Z

    move-result p1

    return p1
.end method

.method public isCreatorVisible(Ljava/lang/reflect/Member;)Z
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->isVisible(Ljava/lang/reflect/Member;)Z

    move-result p1

    return p1
.end method

.method public isFieldVisible(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;)Z
    .locals 0

    .line 361
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;->getAnnotated()Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->isFieldVisible(Ljava/lang/reflect/Field;)Z

    move-result p1

    return p1
.end method

.method public isFieldVisible(Ljava/lang/reflect/Field;)Z
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->isVisible(Ljava/lang/reflect/Member;)Z

    move-result p1

    return p1
.end method

.method public isGetterVisible(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 0

    .line 371
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->isGetterVisible(Ljava/lang/reflect/Method;)Z

    move-result p1

    return p1
.end method

.method public isGetterVisible(Ljava/lang/reflect/Method;)Z
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->isVisible(Ljava/lang/reflect/Member;)Z

    move-result p1

    return p1
.end method

.method public isIsGetterVisible(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 0

    .line 381
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->isIsGetterVisible(Ljava/lang/reflect/Method;)Z

    move-result p1

    return p1
.end method

.method public isIsGetterVisible(Ljava/lang/reflect/Method;)Z
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->isVisible(Ljava/lang/reflect/Member;)Z

    move-result p1

    return p1
.end method

.method public isSetterVisible(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 0

    .line 391
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->isSetterVisible(Ljava/lang/reflect/Method;)Z

    move-result p1

    return p1
.end method

.method public isSetterVisible(Ljava/lang/reflect/Method;)Z
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->isVisible(Ljava/lang/reflect/Member;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Visibility:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " getter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isGetter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", setter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", creator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", field: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public with(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;
    .locals 1

    .line 275
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->DEFAULT:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    if-ne p1, v0, :cond_0

    .line 276
    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    return-object p1

    .line 278
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)V

    return-object v0
.end method

.method public with(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 256
    :cond_0
    invoke-interface {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect;->value()[Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;

    move-result-object v0

    .line 259
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;->GETTER:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;

    invoke-static {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->hasMethod([Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect;->getterVisibility()Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 260
    :goto_0
    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->withGetterVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object v1

    .line 261
    sget-object v2, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;->IS_GETTER:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;

    invoke-static {v0, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->hasMethod([Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect;->isGetterVisibility()Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-result-object v2

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 262
    :goto_1
    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->withIsGetterVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object v1

    .line 263
    sget-object v2, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;->SETTER:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;

    invoke-static {v0, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->hasMethod([Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect;->setterVisibility()Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-result-object v2

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 264
    :goto_2
    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->withSetterVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object v1

    .line 265
    sget-object v2, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;->CREATOR:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;

    invoke-static {v0, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->hasMethod([Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect;->creatorVisibility()Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-result-object v2

    goto :goto_3

    :cond_4
    sget-object v2, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 266
    :goto_3
    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->withCreatorVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object v1

    .line 267
    sget-object v2, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;->FIELD:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;

    invoke-static {v0, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->hasMethod([Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect;->fieldVisibility()Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-result-object p1

    goto :goto_4

    :cond_5
    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 268
    :goto_4
    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->withFieldVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 0

    .line 158
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->with(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 0

    .line 158
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->with(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object p1

    return-object p1
.end method

.method public withCreatorVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;
    .locals 6

    .line 326
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->DEFAULT:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    iget-object p1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    :cond_0
    move-object v4, p1

    .line 327
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    if-ne p1, v4, :cond_1

    return-object p0

    .line 328
    :cond_1
    new-instance p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)V

    return-object p1
.end method

.method public bridge synthetic withCreatorVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 0

    .line 158
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->withCreatorVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object p1

    return-object p1
.end method

.method public withFieldVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;
    .locals 6

    .line 333
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->DEFAULT:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    iget-object p1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    :cond_0
    move-object v5, p1

    .line 334
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    if-ne p1, v5, :cond_1

    return-object p0

    .line 335
    :cond_1
    new-instance p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)V

    return-object p1
.end method

.method public bridge synthetic withFieldVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 0

    .line 158
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->withFieldVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object p1

    return-object p1
.end method

.method public withGetterVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;
    .locals 6

    .line 305
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->DEFAULT:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    iget-object p1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    :cond_0
    move-object v1, p1

    .line 306
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    if-ne p1, v1, :cond_1

    return-object p0

    .line 307
    :cond_1
    new-instance p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)V

    return-object p1
.end method

.method public bridge synthetic withGetterVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 0

    .line 158
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->withGetterVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object p1

    return-object p1
.end method

.method public withIsGetterVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;
    .locals 6

    .line 312
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->DEFAULT:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    iget-object p1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    :cond_0
    move-object v2, p1

    .line 313
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    if-ne p1, v2, :cond_1

    return-object p0

    .line 314
    :cond_1
    new-instance p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)V

    return-object p1
.end method

.method public bridge synthetic withIsGetterVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 0

    .line 158
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->withIsGetterVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object p1

    return-object p1
.end method

.method public withSetterVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;
    .locals 6

    .line 319
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->DEFAULT:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    iget-object p1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    :cond_0
    move-object v3, p1

    .line 320
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    if-ne p1, v3, :cond_1

    return-object p0

    .line 321
    :cond_1
    new-instance p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)V

    return-object p1
.end method

.method public bridge synthetic withSetterVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 0

    .line 158
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->withSetterVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object p1

    return-object p1
.end method

.method public withVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;
    .locals 1

    .line 284
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$1;->$SwitchMap$org$codehaus$jackson$annotate$JsonMethod:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    return-object p0

    .line 296
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->with(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object p1

    return-object p1

    .line 294
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->withIsGetterVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object p1

    return-object p1

    .line 292
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->withFieldVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object p1

    return-object p1

    .line 290
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->withCreatorVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object p1

    return-object p1

    .line 288
    :pswitch_4
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->withSetterVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object p1

    return-object p1

    .line 286
    :pswitch_5
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->withGetterVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic withVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 0

    .line 158
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->withVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object p1

    return-object p1
.end method
