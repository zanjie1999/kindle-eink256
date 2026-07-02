.class public abstract Lcom/amazon/whispersync/org/codehaus/jackson/map/PropertyNamingStrategy;
.super Ljava/lang/Object;
.source "PropertyNamingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/org/codehaus/jackson/map/PropertyNamingStrategy$LowerCaseWithUnderscoresStrategy;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/PropertyNamingStrategy$PropertyNamingStrategyBase;
    }
.end annotation


# static fields
.field public static final CAMEL_CASE_TO_LOWER_CASE_WITH_UNDERSCORES:Lcom/amazon/whispersync/org/codehaus/jackson/map/PropertyNamingStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 168
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/PropertyNamingStrategy$LowerCaseWithUnderscoresStrategy;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/PropertyNamingStrategy$LowerCaseWithUnderscoresStrategy;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/PropertyNamingStrategy;->CAMEL_CASE_TO_LOWER_CASE_WITH_UNDERSCORES:Lcom/amazon/whispersync/org/codehaus/jackson/map/PropertyNamingStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    return-object p3
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

    return-object p3
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

    return-object p3
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

    return-object p3
.end method
