.class public abstract Lcom/amazon/whispersync/org/codehaus/jackson/map/PropertyNamingStrategy$PropertyNamingStrategyBase;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/PropertyNamingStrategy;
.source "PropertyNamingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/codehaus/jackson/map/PropertyNamingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PropertyNamingStrategyBase"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/PropertyNamingStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public nameForConstructorParameter(Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 150
    invoke-virtual {p0, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/PropertyNamingStrategy$PropertyNamingStrategyBase;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public nameForField(Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 131
    invoke-virtual {p0, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/PropertyNamingStrategy$PropertyNamingStrategyBase;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public nameForGetterMethod(Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 137
    invoke-virtual {p0, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/PropertyNamingStrategy$PropertyNamingStrategyBase;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public nameForSetterMethod(Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 143
    invoke-virtual {p0, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/PropertyNamingStrategy$PropertyNamingStrategyBase;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract translate(Ljava/lang/String;)Ljava/lang/String;
.end method
