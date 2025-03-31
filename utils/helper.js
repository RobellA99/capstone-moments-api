function validateMomentsForm(data) {
  if (
    !data.name ||
    !data.location ||
    !data.latitude ||
    !data.longitude ||
    !data.category ||
    !data.description
  ) {
    return {
      success: false,
      error: "Fields are required",
    };
  }
  return {
    success: true,
    data: data,
  };
}

export { validateMomentsForm };
